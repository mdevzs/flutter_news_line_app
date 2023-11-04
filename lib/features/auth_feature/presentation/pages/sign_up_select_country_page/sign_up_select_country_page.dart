import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_line_app/core/utils/debouncer.dart';
import 'package:news_line_app/core/utils/gaps.dart';
import 'package:news_line_app/core/widgets/widgets.dart';
import 'package:news_line_app/features/auth_feature/presentation/pages/sign_up_select_country_page/bloc/sign_up_select_country_bloc.dart';
import 'package:news_line_app/features/auth_feature/presentation/widgets/auth_features_widgets.dart';
import 'package:sizer_pro/sizer.dart';

class SignUpSelectCountryPage extends StatelessWidget {
  const SignUpSelectCountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    final searchController = TextEditingController();
    final debouncer = Debouncer(milliseconds: 500);
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: progressAppbar(percentage: 0.2),
      body: BlocBuilder<SignUpSelectCountryBloc, SignUpSelectCountryState>(
        builder: (context, state) {
          return Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(8.sp),
                child: Column(
                  children: [
                    textWithIcon(
                      text: 'Where do you come from?',
                      icon: 'assets/icons/world_map.png',
                    ),
                    customText(
                      'Select your country of origin. This will help us to make the best recommendations for you.',
                      fontSize: 8,
                    ),
                    gapH12,
                    appTextFormField(
                      controller: searchController,
                      showClearIcon: true,
                      icon: const Icon(Icons.search),
                      hintText: 'Search country',
                      onChangeValue: (value) {
                        debouncer.run(() {
                          context.read<SignUpSelectCountryBloc>().add(
                              SignUpSelectCountryEvent.getCountries(
                                  searchController.text));
                        });
                      },
                      validator: (value) => null,
                      onClearedButtonPressed: () {
                        debugPrint('cleared button pressed');
                        context.read<SignUpSelectCountryBloc>().add(
                            const SignUpSelectCountryEvent.getCountries(''));
                      },
                    ),
                    gapH12,
                    Expanded(
                      child: SizedBox(
                          child: state.getAllCountriesState.when(
                        initial: () {
                          //* when the state is in the initial this will
                          //* request to the api and get all countries
                          context.read<SignUpSelectCountryBloc>().add(
                              const SignUpSelectCountryEvent.getCountries(''));
                          return null;
                        },
                        loading: (isLoadingMore) {
                          if (!isLoadingMore) {
                            return const Center(
                              child: CircularProgressIndicator(),
                            );
                          }
                          return null;
                        },
                        success: () {
                          return ListView.builder(
                            padding: EdgeInsets.only(
                              //* at the end of the list we will have some space
                              //* if we select a country and the list was reachedEnd
                              bottom: state.countrySelectedId != -1 &&
                                      state.hasReachedEnd
                                  ? 6.h
                                  : 0,
                            ),
                            controller: context
                                .read<SignUpSelectCountryBloc>()
                                .scrollController,
                            itemCount: state.hasReachedEnd
                                ? state.countries.length
                                : state.countries.length +
                                    1, //* increase the length of itemCount to show the loadingProgressBar or ErrorWidget
                            itemBuilder: (context, index) {
                              if (index >= state.countries.length) {
                                return state.loadingMore.when(
                                  loading: () {
                                    //* loading more state
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        bottom: state.countrySelectedId != -1
                                            ? 8.h
                                            : 1.h,
                                      ),
                                      child: const Center(
                                        child: CircularProgressIndicator(),
                                      ),
                                    );
                                  },
                                  error: (message) {
                                    //* error in loading more state
                                    return Padding(
                                      padding: EdgeInsets.only(
                                        bottom: state.countrySelectedId != -1
                                            ? 8.h
                                            : 1.h,
                                      ),
                                      child: errorWidget(
                                        errorMessage: message,
                                        onTryAgainPressed: () {
                                          context
                                              .read<SignUpSelectCountryBloc>()
                                              .add(
                                                SignUpSelectCountryEvent
                                                    .loadMore(
                                                  isTryAgain: true,
                                                  q: searchController.text,
                                                ),
                                              );
                                        },
                                      ),
                                    );
                                  },
                                );
                              } else {
                                return Padding(
                                  padding: EdgeInsets.symmetric(
                                    vertical: 3.sp,
                                  ),
                                  child: InkWell(
                                    splashColor: Colors.transparent,
                                    onTap: () {
                                      context
                                          .read<SignUpSelectCountryBloc>()
                                          .add(
                                            SignUpSelectCountryEvent
                                                .selectCountry(
                                              id: state.countries[index].id,
                                            ),
                                          );
                                      debugPrint('selected index is:$index');
                                    },
                                    child: countryListItem(
                                      flagUrl: state.countries[index].flag,
                                      countryName: state.countries[index].name,
                                      isSelected: state.countrySelectedId ==
                                          state.countries[index].id,
                                    ),
                                  ),
                                );
                              }
                            },
                          );
                        },
                        error: (message) {
                          return errorWidget(
                            errorMessage: message,
                            onTryAgainPressed: () {
                              context.read<SignUpSelectCountryBloc>().add(
                                    SignUpSelectCountryEvent.getCountries(
                                      searchController.text,
                                    ),
                                  );
                            },
                          );
                        },
                      )),
                    ),
                  ],
                ),
              ),
              Visibility(
                visible: state.countrySelectedId != -1,
                child: Positioned(
                  bottom: 0,
                  child: continueSection(
                    onButtonPressed: () {},
                  ),
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
