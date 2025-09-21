.class public Lcom/sec/android/app/camera/engine/watermark/WatermarkData;
.super Ljava/lang/Object;
.source "WatermarkData.java"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/InternalEngine$Watermark;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "WatermarkData"

.field private static final TEXT_LAYOUT_MAX_LINE:I = 0x1


# instance fields
.field private final mAlign:I

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mContext:Landroid/content/Context;

.field private final mDate:Ljava/lang/String;

.field private final mScaleFactor:F

.field private final mSideMargin:F

.field private final mText:Ljava/lang/String;

.field private final mTypeface:Landroid/graphics/Typeface;

.field private final mWidth:I


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->b(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mContext:Landroid/content/Context;

    .line 3
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->g(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mText:Ljava/lang/String;

    .line 4
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->c(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mDate:Ljava/lang/String;

    .line 5
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->d(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/TextUtil;->getWatermarkFont(Landroid/content/Context;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mTypeface:Landroid/graphics/Typeface;

    .line 6
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->a(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)I

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mAlign:I

    .line 7
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->e(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getScaleFactor(Lcom/sec/android/app/camera/interfaces/Resolution;)F

    move-result v0

    iput v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mScaleFactor:F

    .line 8
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->d(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getWatermarkWidth(Z)I

    move-result v1

    iput v1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mWidth:I

    .line 10
    invoke-static {p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;->f(Lcom/sec/android/app/camera/engine/watermark/WatermarkData$Builder;)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mSideMargin:F

    .line 11
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->drawBitmap(Z)V

    return-void
.end method

.method private createBitmap(Z)Landroid/util/Pair;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Pair<",
            "Landroid/text/StaticLayout;",
            "Landroid/text/StaticLayout;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mText:Ljava/lang/String;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v3, v1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextPaint(Landroid/graphics/Typeface;Z)Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextLayout(Ljava/lang/String;Landroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object v0

    int-to-float v1, v1

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextHeight()F

    move-result v3

    add-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_0

    :cond_0
    move-object v0, v2

    .line 4
    :goto_0
    iget-object v3, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mDate:Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextPaint(Landroid/graphics/Typeface;Z)Landroid/text/TextPaint;

    move-result-object p1

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextLayout(Ljava/lang/String;Landroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object v2

    int-to-float p1, v1

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextHeight()F

    move-result v1

    add-float/2addr p1, v1

    float-to-int v1, p1

    .line 7
    :cond_1
    iget p1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mWidth:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, v1, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mBitmap:Landroid/graphics/Bitmap;

    .line 8
    new-instance p0, Landroid/util/Pair;

    invoke-direct {p0, v0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0
.end method

.method private drawBitmap(Z)V
    .locals 5

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->createBitmap(Z)Landroid/util/Pair;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/graphics/Canvas;

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mBitmap:Landroid/graphics/Bitmap;

    invoke-direct {v1, v2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v2, :cond_0

    .line 4
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mText:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mTypeface:Landroid/graphics/Typeface;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v4}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextPaint(Landroid/graphics/Typeface;Z)Landroid/text/TextPaint;

    move-result-object v3

    invoke-direct {p0, v2, v3}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextLayoutWithStroke(Ljava/lang/String;Landroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 5
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Landroid/text/StaticLayout;

    invoke-virtual {v2, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    const/4 v2, 0x0

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextHeight()F

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 7
    :cond_0
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    if-eqz v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mDate:Ljava/lang/String;

    iget-object v3, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v3, p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextPaint(Landroid/graphics/Typeface;Z)Landroid/text/TextPaint;

    move-result-object p1

    invoke-direct {p0, v2, p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextLayoutWithStroke(Ljava/lang/String;Landroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 9
    iget-object p0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p0, Landroid/text/StaticLayout;

    invoke-virtual {p0, v1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    return-void
.end method

.method private getScaleFactor(Lcom/sec/android/app/camera/interfaces/Resolution;)F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "window"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/WindowManager;

    .line 2
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    .line 4
    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/interfaces/AspectRatio;->getAspectRatio(II)Lcom/sec/android/app/camera/interfaces/AspectRatio;

    move-result-object v0

    .line 5
    sget-object v1, Lcom/sec/android/app/camera/interfaces/AspectRatio;->RATIO_16x9:Lcom/sec/android/app/camera/interfaces/AspectRatio;

    if-ne v0, v1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    int-to-float p1, p1

    .line 7
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    :goto_0
    int-to-float p0, p0

    div-float/2addr p1, p0

    return p1

    .line 8
    :cond_0
    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 9
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0

    .line 10
    :cond_1
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    move-result-object p0

    .line 11
    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 12
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    goto :goto_0
.end method

.method private getStaticLayout(Ljava/lang/String;Landroid/text/TextPaint;)Landroid/text/StaticLayout;
    .locals 3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    iget v1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mWidth:I

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, p2, v1}, Landroid/text/StaticLayout$Builder;->obtain(Ljava/lang/CharSequence;IILandroid/text/TextPaint;I)Landroid/text/StaticLayout$Builder;

    move-result-object p2

    iget p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mAlign:I

    .line 2
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/text/BidiFormatter;->isRtl(Ljava/lang/String;)Z

    move-result p1

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/util/TextUtil;->getWatermarkTextAlignment(IZ)Landroid/text/Layout$Alignment;

    move-result-object p0

    invoke-virtual {p2, p0}, Landroid/text/StaticLayout$Builder;->setAlignment(Landroid/text/Layout$Alignment;)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    const/4 p1, 0x2

    .line 3
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setBreakStrategy(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 4
    invoke-virtual {p0, v2}, Landroid/text/StaticLayout$Builder;->setIncludePad(Z)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    const/4 p1, 0x1

    .line 5
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout$Builder;->setMaxLines(I)Landroid/text/StaticLayout$Builder;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Landroid/text/StaticLayout$Builder;->build()Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method private getTextHeight()F
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0708bc

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iget p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mScaleFactor:F

    mul-float/2addr v0, p0

    return v0
.end method

.method private getTextLayout(Ljava/lang/String;Landroid/text/TextPaint;)Landroid/text/StaticLayout;
    .locals 2

    .line 1
    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mContext:Landroid/content/Context;

    const v1, 0x7f060462

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getStaticLayout(Ljava/lang/String;Landroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method private getTextLayoutWithStroke(Ljava/lang/String;Landroid/text/TextPaint;)Landroid/text/StaticLayout;
    .locals 3

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mScaleFactor:F

    iget-object v1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708bb

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v0, v1

    .line 2
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, v1}, Landroid/text/TextPaint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 3
    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mContext:Landroid/content/Context;

    const v1, 0x7f060461

    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/text/TextPaint;->setColor(I)V

    .line 5
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getStaticLayout(Ljava/lang/String;Landroid/text/TextPaint;)Landroid/text/StaticLayout;

    move-result-object p0

    return-object p0
.end method

.method private getTextPaint(Landroid/graphics/Typeface;Z)Landroid/text/TextPaint;
    .locals 2

    .line 1
    iget v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mScaleFactor:F

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v1, 0x7f0708be

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    mul-float/2addr v0, p0

    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Lcom/sec/android/app/camera/util/factory/TextPaintFactory;->create(I)Landroid/text/TextPaint;

    move-result-object v1

    .line 3
    invoke-virtual {v1, p0}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 4
    invoke-virtual {v1, v0}, Landroid/text/TextPaint;->setTextSize(F)V

    if-eqz p2, :cond_0

    .line 5
    invoke-static {}, Lcom/sec/android/app/camera/util/TextUtil;->getRobotoLight()Landroid/graphics/Typeface;

    move-result-object p1

    :cond_0
    invoke-virtual {v1, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 6
    invoke-virtual {v1, p0}, Landroid/text/TextPaint;->setElegantTextHeight(Z)V

    return-object v1
.end method

.method private getWatermarkWidth(Z)I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mText:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    int-to-float v0, v1

    .line 2
    iget-object v2, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v2, v1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextPaint(Landroid/graphics/Typeface;Z)Landroid/text/TextPaint;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mText:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    float-to-int v1, v0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mDate:Ljava/lang/String;

    if-eqz v0, :cond_1

    int-to-float v0, v1

    .line 4
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mTypeface:Landroid/graphics/Typeface;

    invoke-direct {p0, v1, p1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextPaint(Landroid/graphics/Typeface;Z)Landroid/text/TextPaint;

    move-result-object p1

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mDate:Ljava/lang/String;

    invoke-virtual {p1, p0}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result p0

    invoke-static {v0, p0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    float-to-int v1, p0

    :cond_1
    return v1
.end method


# virtual methods
.method public getAlign()I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mAlign:I

    return p0
.end method

.method public getBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getBottomMargin()I
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mTypeface:Landroid/graphics/Typeface;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->getTextPaint(Landroid/graphics/Typeface;Z)Landroid/text/TextPaint;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0708a2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sub-float/2addr v1, v0

    iget p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mScaleFactor:F

    mul-float/2addr v1, p0

    float-to-int p0, v1

    return p0
.end method

.method public getSideMargin()I
    .locals 1

    iget v0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mSideMargin:F

    iget p0, p0, Lcom/sec/android/app/camera/engine/watermark/WatermarkData;->mScaleFactor:F

    mul-float/2addr v0, p0

    float-to-int p0, v0

    return p0
.end method
