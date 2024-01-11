import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'dart:math' as math;

class SliderWidgetTrackShape extends SliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = true,
    bool isDiscrete = false,
  }) {
    // return Rect.fromLTWH(
    //   0,
    //   0,
    //   parentBox.size.width,
    //   parentBox.size.height,
    // );
    //
    // final double thumbWidth =
    //     sliderTheme.thumbShape!.getPreferredSize(isEnabled, isDiscrete).width;
    // final double overlayWidth =
    //     sliderTheme.overlayShape!.getPreferredSize(isEnabled, isDiscrete).width;
    // final double trackHeight = sliderTheme.trackHeight!;

    // final double trackLeft = offset.dx + overlayWidth / 2;
    // final double trackTop =
    //     offset.dy + (parentBox.size.height - trackHeight) / 2;
    // final double trackWidth =
    //     parentBox.size.width - math.max(thumbWidth, overlayWidth);
    // return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
    //
    final double thumbWidth = sliderTheme.thumbShape!
        .getPreferredSize(
          isEnabled,
          isDiscrete,
        )
        .width;
    final double trackHeight = sliderTheme.trackHeight!;
    assert(thumbWidth >= 0);
    assert(trackHeight >= 0);
    assert(parentBox.size.width >= thumbWidth);
    assert(parentBox.size.height >= trackHeight);

    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackLeft = offset.dx + thumbWidth / 2;
    double trackWidth = parentBox.size.width - thumbWidth;

    return Rect.fromLTWH(
      trackLeft,
      trackTop,
      trackWidth,
      trackHeight,
    );
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isEnabled = true,
    bool isDiscrete = false,
    required TextDirection textDirection,
  }) {
    final canvas = context.canvas;

    final paint = Paint()
      ..color = sliderTheme.inactiveTrackColor! //Thumb Background Color
      ..style = PaintingStyle.fill;

    // final rrect = RRect.fromRectAndRadius(
    //   Rect.fromCenter(
    //     center: offset,
    //     width: parentBox.size.width,
    //     height: parentBox.size.height / 2,
    //   ),
    //   Radius.circular(8.sp),
    // );
    //canvas.drawRRect(rrect, paint);
    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );
    final rrect = Path()
      ..addRect(
        Rect.fromPoints(
          Offset(trackRect.left, trackRect.top),
          Offset(trackRect.right, trackRect.bottom),
        ),
      );
    canvas.drawPath(rrect, paint);
  }
}

class CustomTick extends SliderTickMarkShape {
  @override
  Size getPreferredSize(
      {required SliderThemeData sliderTheme, required bool isEnabled}) {
    return const Size(10, 10);
  }

  @override
  void paint(PaintingContext context, Offset center,
      {required RenderBox parentBox,
      required SliderThemeData sliderTheme,
      required Animation<double> enableAnimation,
      required Offset thumbCenter,
      required bool isEnabled,
      required TextDirection textDirection}) {
    final Canvas canvas = context.canvas;
    final Paint paint = Paint()..color = Colors.grey;

    canvas.drawRect(
        Rect.fromCenter(center: center, width: 5, height: 20), paint);
  }
}

class CabinSliderThumbShape extends SliderComponentShape {
  final double thumbRadius;

  const CabinSliderThumbShape({
    required this.thumbRadius,
  });

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final fillPaint = Paint()
      ..color = sliderTheme.thumbColor!
      ..style = PaintingStyle.fill;

    const borderColor = Color.fromARGB(255, 12, 94, 230);

    final rect = Rect.fromCircle(center: center, radius: thumbRadius);

    const border = CircleBorder(side: BorderSide(color: borderColor, width: 2));

    border.paint(context.canvas, rect);
    context.canvas.drawPath(border.getInnerPath(rect), fillPaint);
  }
}

class CabinSliderTrackShape extends SliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = true,
    bool isDiscrete = false,
  }) {
    final thumbSize =
        sliderTheme.thumbShape!.getPreferredSize(isEnabled, isDiscrete);
    const insidePadding = 4;
    final inscribedSize = (parentBox.size -
        Offset(thumbSize.width + 2 * insidePadding, 0)) as Size;
    return Alignment.center
        .inscribe(inscribedSize, Offset.zero & parentBox.size);
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    Offset? secondaryOffset,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required TextDirection textDirection,
    required Offset thumbCenter,
    bool isDiscrete = false,
    bool isEnabled = true,
  }) {
    final fillPaint = Paint()
      ..color = sliderTheme.activeTrackColor!
      ..style = PaintingStyle.fill;

    const borderColor = Color.fromARGB(255, 12, 94, 230);

    const border = StadiumBorder(
      side: BorderSide(width: 2, color: borderColor),
    );

    final rect = offset & parentBox.size;

    context.canvas.drawPath(border.getInnerPath(rect), fillPaint);
    border.paint(context.canvas, rect);
  }
}

class FriesSliderThumbShape extends SliderComponentShape {
  const FriesSliderThumbShape({this.thumbRadius = 6.0});

  final double thumbRadius;

  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size.fromRadius(thumbRadius);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    assert(sliderTheme.disabledThumbColor != null);
    assert(sliderTheme.thumbColor != null);

    final Canvas canvas = context.canvas;
    final ColorTween colorTween = ColorTween(
      begin: sliderTheme.disabledThumbColor,
      end: sliderTheme.thumbColor,
    );

    final Color color = colorTween.evaluate(enableAnimation)!;
    final double thumbOffset = (center.dx / parentBox.size.width) *
            (parentBox.size.width - thumbRadius * 2 - 4) +
        thumbRadius +
        2;

    canvas.drawCircle(
      Offset(thumbOffset, center.dy),
      thumbRadius,
      Paint()..color = color,
    );
  }
}

class FriesSliderTrackShape extends SliderTrackShape {
  const FriesSliderTrackShape();

  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;
    assert(trackHeight >= 0);

    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackRight = trackLeft + parentBox.size.width;
    final double trackBottom = trackTop + trackHeight;

    return Rect.fromLTRB(
      math.min(trackLeft, trackRight),
      trackTop,
      math.max(trackLeft, trackRight),
      trackBottom,
    );
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isEnabled = false,
    bool isDiscrete = false,
    required TextDirection textDirection,
  }) {
    assert(sliderTheme.disabledActiveTrackColor != null);
    assert(sliderTheme.disabledInactiveTrackColor != null);
    assert(sliderTheme.activeTrackColor != null);
    assert(sliderTheme.inactiveTrackColor != null);
    assert(sliderTheme.thumbShape != null);

    if (sliderTheme.trackHeight! <= 0) {
      return;
    }

    // Assign the track segment paints, which are left: active, right: inactive,
    // but reversed for right to left text.
    final ColorTween activeTrackColorTween = ColorTween(
      begin: sliderTheme.disabledActiveTrackColor,
      end: sliderTheme.activeTrackColor,
    );
    final ColorTween inactiveTrackColorTween = ColorTween(
      begin: sliderTheme.disabledInactiveTrackColor,
      end: sliderTheme.inactiveTrackColor,
    );
    final Paint activePaint = Paint()
      ..color = activeTrackColorTween.evaluate(enableAnimation)!;
    final Paint inactivePaint = Paint()
      ..color = inactiveTrackColorTween.evaluate(enableAnimation)!;
    final Paint leftTrackPaint;
    final Paint rightTrackPaint;
    switch (textDirection) {
      case TextDirection.ltr:
        leftTrackPaint = activePaint;
        rightTrackPaint = inactivePaint;
      case TextDirection.rtl:
        leftTrackPaint = inactivePaint;
        rightTrackPaint = activePaint;
    }
    final Size thumbSize =
        sliderTheme.thumbShape!.getPreferredSize(isEnabled, isDiscrete);
    final double thumbRadius = math.min(thumbSize.width, thumbSize.height) / 2;
    final double thumbStartOffset = (thumbCenter.dx / parentBox.size.width) *
            (parentBox.size.width - thumbRadius * 2 - 4) +
        thumbRadius * 2 +
        4;
    final double thumbEndOffset = (thumbCenter.dx / parentBox.size.width) *
        (parentBox.size.width - thumbRadius * 2 - 4);

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final Rect leftTrackSegment = Rect.fromLTRB(
      trackRect.left,
      trackRect.top,
      thumbStartOffset,
      trackRect.bottom,
    );
    final Rect rightTrackSegment = Rect.fromLTRB(
      thumbEndOffset,
      trackRect.top,
      trackRect.right,
      trackRect.bottom,
    );

    if (!leftTrackSegment.isEmpty) {
      context.canvas.drawRRect(
        RRect.fromRectAndRadius(
          leftTrackSegment,
          Radius.circular(trackRect.height / 2),
        ),
        leftTrackPaint,
      );
    }
    if (!rightTrackSegment.isEmpty) {
      context.canvas.drawRRect(
        RRect.fromRectAndRadius(
          rightTrackSegment,
          Radius.circular(trackRect.height / 2),
        ),
        rightTrackPaint,
      );
    }
  }
}

class BrightnessSliderShape extends SliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;

    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackRight = trackLeft + parentBox.size.width;
    final double trackBottom = trackTop + trackHeight;

    return Rect.fromLTRB(
      math.min(trackLeft, trackRight),
      trackTop,
      math.max(trackLeft, trackRight),
      trackBottom,
    );
  }

  @override
  void paint(
    PaintingContext context,
    Offset offset, {
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required Animation<double> enableAnimation,
    required Offset thumbCenter,
    Offset? secondaryOffset,
    bool isEnabled = false,
    bool isDiscrete = false,
    required TextDirection textDirection,
  }) {
    final leftTrackPaint = Paint()..color = sliderTheme.activeTrackColor!;
    final rightTrackPaint = Paint()..color = sliderTheme.inactiveTrackColor!;

    final Size thumbSize =
        sliderTheme.thumbShape!.getPreferredSize(isEnabled, isDiscrete);
    final double thumbRadius = math.min(thumbSize.width, thumbSize.height) / 2;
    final double thumbStartOffset = (thumbCenter.dx / parentBox.size.width) *
            (parentBox.size.width - thumbRadius * 2 - 4) +
        thumbRadius * 2 +
        4;
    final double thumbEndOffset = (thumbCenter.dx / parentBox.size.width) *
        (parentBox.size.width - thumbRadius * 2 - 4);

    final Rect trackRect = getPreferredRect(
      parentBox: parentBox,
      offset: offset,
      sliderTheme: sliderTheme,
      isEnabled: isEnabled,
      isDiscrete: isDiscrete,
    );

    final Rect leftTrackSegment = Rect.fromLTRB(
      trackRect.left,
      trackRect.top,
      thumbStartOffset,
      trackRect.bottom,
    );
    final Rect rightTrackSegment = Rect.fromLTRB(
      thumbEndOffset,
      trackRect.top,
      trackRect.right,
      trackRect.bottom,
    );

    if (!leftTrackSegment.isEmpty) {
      context.canvas.drawRRect(
        RRect.fromRectAndRadius(
          leftTrackSegment,
          Radius.circular(trackRect.height / 2),
        ),
        leftTrackPaint,
      );
    }
    if (!rightTrackSegment.isEmpty) {
      context.canvas.drawRRect(
        RRect.fromRectAndCorners(
          rightTrackSegment,
          //topLeft: Radius.elliptical(0, 0),
          //bottomLeft: Radius.circular(trackRect.height / 2),
          topRight: Radius.circular(trackRect.height / 2),
          bottomRight: Radius.circular(trackRect.height / 2),
        ),
        rightTrackPaint,
      );
    }
  }
}

class SliderThumbImage extends SliderComponentShape {
  final ui.Image? image;
  SliderThumbImage(this.image);
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return const Size(0, 0);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    required Animation<double> activationAnimation,
    required Animation<double> enableAnimation,
    required bool isDiscrete,
    required TextPainter labelPainter,
    required RenderBox parentBox,
    required SliderThemeData sliderTheme,
    required TextDirection textDirection,
    required double value,
    required double textScaleFactor,
    required Size sizeWithOverflow,
  }) {
    final canvas = context.canvas;
    final imageWidth = image?.width ?? 10;
    final imageHeight = image?.height ?? 10;

    Offset imageOffset = Offset(
      center.dx - (imageWidth / 1.2),
      center.dy - (imageHeight / 2),
    );

    Paint paint = Paint()..filterQuality = FilterQuality.high;

    if (image != null) {
      canvas.drawImage(image!, imageOffset, paint);
    }
  }
}

class NoMarginTrackShape extends RoundedRectSliderTrackShape {
  @override
  Rect getPreferredRect({
    required RenderBox parentBox,
    Offset offset = Offset.zero,
    required SliderThemeData sliderTheme,
    bool isEnabled = false,
    bool isDiscrete = false,
  }) {
    final double trackHeight = sliderTheme.trackHeight!;
    final double trackLeft = offset.dx;
    final double trackTop =
        offset.dy + (parentBox.size.height - trackHeight) / 2;
    final double trackWidth = parentBox.size.width;
    return Rect.fromLTWH(trackLeft, trackTop, trackWidth, trackHeight);
  }
}
