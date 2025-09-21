.class public abstract Lcom/sec/android/app/camera/cropper/view/CropImageView;
.super Landroidx/appcompat/widget/AppCompatImageView;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;
    }
.end annotation


# static fields
.field private static final MIME_TYPE_RAW:Ljava/lang/String; = "image/x-adobe-dng"

.field private static final TAG:Ljava/lang/String; = "CropImageView"


# instance fields
.field protected mImageViewRect:Landroid/graphics/Rect;

.field private mIsUseThumbnail:Z

.field protected mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

.field protected mOverlayPaint:Landroid/graphics/Paint;

.field protected mPathPaint:Landroid/graphics/Paint;

.field protected mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

.field protected mPolygonPaint:Landroid/graphics/Paint;

.field protected mPreviewScaledRatio:F

.field private mProRawOnlyPictureFormat:Z

.field protected mResizedBitmap:Landroid/graphics/Bitmap;

.field protected mRotatedBitmap:Landroid/graphics/Bitmap;

.field protected mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

.field protected mTouchedPoint:Landroid/graphics/PointF;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->initCropImageView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->initCropImageView(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroidx/appcompat/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->initCropImageView(Landroid/content/Context;)V

    return-void
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;F)I
    .locals 6

    .line 1
    iget p0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 2
    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 3
    div-int/lit8 v0, p0, 0x2

    .line 4
    div-int/lit8 v1, p1, 0x2

    const/4 v2, 0x1

    :goto_0
    int-to-float v3, v0

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v5, p0

    mul-float/2addr v5, p2

    cmpl-float v3, v3, v5

    if-ltz v3, :cond_0

    int-to-float v3, v1

    div-float/2addr v3, v4

    int-to-float v4, p1

    mul-float/2addr v4, p2

    cmpl-float v3, v3, v4

    if-ltz v3, :cond_0

    mul-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    return v2
.end method

.method private getBitmapFromInternalCache(Ljava/lang/String;FZ)Landroid/graphics/Bitmap;
    .locals 12

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getBitmapFromInternalCache : Start["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v4, "CropImageView"

    invoke-static {v4, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p3, :cond_1

    .line 3
    new-instance p3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 5
    invoke-static {p1, p3}, Lcom/samsung/android/media/SemHEIFCodec;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    const/4 v2, 0x0

    .line 6
    iput-boolean v2, p3, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 7
    invoke-direct {p0, p3, p2}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;F)I

    move-result p0

    iput p0, p3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 8
    sget-object p0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p0, p3, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 9
    invoke-static {p1, p3}, Lcom/samsung/android/media/SemHEIFCodec;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string/jumbo p1, "setOriginalImageInfo: Successfully SemHEIFCodec decoded."

    .line 10
    invoke-static {v4, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 11
    :cond_0
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0

    .line 12
    :cond_1
    invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    :goto_0
    move-object v5, p0

    const/high16 p0, 0x3f800000    # 1.0f

    cmpl-float p0, p2, p0

    if-eqz p0, :cond_2

    .line 13
    new-instance v10, Landroid/graphics/Matrix;

    invoke-direct {v10}, Landroid/graphics/Matrix;-><init>()V

    .line 14
    invoke-virtual {v10, p2, p2}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v6, 0x0

    const/4 v7, 0x0

    .line 15
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    const/4 v11, 0x1

    invoke-static/range {v5 .. v11}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 16
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    .line 17
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getBitmapFromInternalCache : End["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, "] ["

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sub-long/2addr p0, v0

    invoke-virtual {p2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v5
.end method

.method private getBitmapSize(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/util/Size;
    .locals 2

    const-string p0, "CropImageView"

    .line 1
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 2
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 3
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 p2, 0x0

    .line 4
    :try_start_1
    invoke-static {p1, p2, v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    goto :goto_0

    :catchall_0
    move-exception p2

    goto :goto_1

    :cond_0
    const-string p2, "getBitmapSize - inputStream is null"

    .line 5
    invoke-static {p0, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz p1, :cond_2

    .line 6
    :try_start_2
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_3

    :goto_1
    if-eqz p1, :cond_1

    .line 7
    :try_start_3
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    :catchall_1
    move-exception p1

    :try_start_4
    invoke-virtual {p2, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_2
    throw p2
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    const-string p1, "getBitmapSize - IllegalStateException"

    .line 8
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_1
    const-string p1, "getBitmapSize - IOException"

    .line 9
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :catch_2
    const-string p1, "getBitmapSize - FileNotFoundException"

    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    :cond_2
    :goto_3
    new-instance p0, Landroid/util/Size;

    iget p1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget p2, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, p1, p2}, Landroid/util/Size;-><init>(II)V

    return-object p0
.end method

.method private getScaledRatio(IIII)F
    .locals 0

    int-to-float p3, p3

    int-to-float p1, p1

    div-float/2addr p3, p1

    int-to-float p1, p4

    int-to-float p2, p2

    div-float/2addr p1, p2

    .line 1
    iget-boolean p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mIsUseThumbnail:Z

    if-eqz p0, :cond_0

    .line 2
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0

    :cond_0
    const/high16 p0, 0x3f800000    # 1.0f

    .line 3
    invoke-static {p3, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    return p0
.end method

.method private initCropImageView(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/util/PaintUtil;->newPathPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPathPaint:Landroid/graphics/Paint;

    .line 2
    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/util/PaintUtil;->newPolygonPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygonPaint:Landroid/graphics/Paint;

    .line 3
    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/util/PaintUtil;->newOverlayPaint(Landroid/content/Context;)Landroid/graphics/Paint;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOverlayPaint:Landroid/graphics/Paint;

    .line 4
    new-instance p1, Landroid/graphics/PointF;

    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedPoint:Landroid/graphics/PointF;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mTouchedHandle:Lcom/sec/android/app/camera/cropper/handle/Handle;

    .line 6
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mImageViewRect:Landroid/graphics/Rect;

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mIsUseThumbnail:Z

    return-void
.end method

.method private isInvalidInitialPointList(Ljava/util/ArrayList;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/graphics/PointF;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private setImageInfoFromInternalCache(Ljava/lang/String;FLandroid/net/Uri;ZZ)V
    .locals 10

    .line 1
    :try_start_0
    new-instance v0, Landroidx/exifinterface/media/ExifInterface;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v9, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-direct {p0, p1, p2, p5}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getBitmapFromInternalCache(Ljava/lang/String;FZ)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->getOrientationWithExif(Landroidx/exifinterface/media/ExifInterface;)I

    move-result v4

    move-object v1, v9

    move-object v3, p1

    move-object v5, p3

    move v6, p4

    move v7, p2

    move v8, p5

    invoke-direct/range {v1 .. v8}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;ILandroid/net/Uri;ZFZ)V

    iput-object v9, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "CropImageView"

    const-string p1, "setImageInfoFromInternalCache : Can not get bitmap from image absolute path : IOException"

    .line 3
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public drawBitmap(Landroid/util/Size;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "drawBitmap : layout width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " height = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "\nbitmap width = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    .line 2
    invoke-static {v2}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$000(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$000(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CropImageView"

    .line 3
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$000(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$100(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/cropper/util/BitmapUtil;->rotateImageByOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mRotatedBitmap:Landroid/graphics/Bitmap;

    .line 5
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mRotatedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    invoke-direct {p0, v0, v1, v2, p1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getScaledRatio(IIII)F

    move-result p1

    iput p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPreviewScaledRatio:F

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mRotatedBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/cropper/util/BitmapUtil;->resizeBitmapImage(Landroid/graphics/Bitmap;F)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    .line 7
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->setMinCropSizeByType(Lcom/sec/android/app/camera/cropper/polygon/Polygon;)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public getOriginalBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$000(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalCropRect()Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getPointList()Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->getRectFromPolygon(Ljava/util/ArrayList;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {v1}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$100(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    invoke-static {v1, v0, v2, v3}, Lcom/sec/android/app/camera/cropper/util/RectUtil;->getRotatedCropRectToOriginal(ILandroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object v0

    .line 3
    iget v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPreviewScaledRatio:F

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {v2}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$000(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$000(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-static {v0, v1, v2, p0}, Lcom/sec/android/app/camera/cropper/util/RectUtil;->getScaledCropRectToOriginal(Landroid/graphics/Rect;FII)Landroid/graphics/Rect;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalImageInfo()Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    return-object p0
.end method

.method public getOriginalImageOrientation()I
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$100(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)I

    move-result p0

    return p0
.end method

.method public getOriginalImagePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$200(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalImageUri()Landroid/net/Uri;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$300(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)Landroid/net/Uri;

    move-result-object p0

    return-object p0
.end method

.method public getOriginalMinCropSize()I
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getMinCropSize()I

    move-result v0

    int-to-float v0, v0

    iget p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPreviewScaledRatio:F

    div-float/2addr v0, p0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method

.method public getOriginalTargetRatio()F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$400(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)F

    move-result p0

    return p0
.end method

.method public getPolygonPointList()Ljava/util/ArrayList;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->getPointList()Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method public getResizedBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public getRotatedBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mRotatedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method public isHeif()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$500(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)Z

    move-result p0

    return p0
.end method

.method public isNonDestruction()Z
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {p0}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$600(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)Z

    move-result p0

    return p0
.end method

.method public isProRawOnlyPictureFormat()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mProRawOnlyPictureFormat:Z

    return p0
.end method

.method public isUseThumbnail()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mIsUseThumbnail:Z

    return p0
.end method

.method protected onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/ImageView;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mImageViewRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Landroid/widget/ImageView;->getLeft()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/ImageView;->getTop()I

    move-result p3

    invoke-virtual {p0}, Landroid/widget/ImageView;->getRight()I

    move-result p4

    invoke-virtual {p0}, Landroid/widget/ImageView;->getBottom()I

    move-result p5

    invoke-virtual {p1, p2, p3, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/sec/android/app/camera/cropper/R$string;->adjust_scan_area_screen_talk_back:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->announceForAccessibility(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public performClick()Z
    .locals 0

    invoke-super {p0}, Landroid/widget/ImageView;->performClick()Z

    move-result p0

    return p0
.end method

.method public setInitialPolygonPoint(Landroid/graphics/Rect;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    new-instance p1, Landroid/graphics/Rect;

    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-direct {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V

    goto :goto_0

    .line 2
    :cond_0
    iget v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPreviewScaledRatio:F

    invoke-static {p1, v0}, Lcom/sec/android/app/camera/cropper/util/RectUtil;->getScaledCropRectToScreenFit(Landroid/graphics/Rect;F)Landroid/graphics/Rect;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    invoke-static {v0}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;->access$100(Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;)I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-static {v0, p1, v1, v2}, Lcom/sec/android/app/camera/cropper/util/RectUtil;->getRotatedCropRectToCropView(ILandroid/graphics/Rect;II)Landroid/graphics/Rect;

    move-result-object p1

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/util/RectUtil;->convertRectToArrayList(Landroid/graphics/Rect;)Ljava/util/ArrayList;

    move-result-object p1

    .line 5
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->adjustPolygonBoundary(Landroid/util/Size;Ljava/util/ArrayList;)V

    .line 6
    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->sortPointsClockwise(Ljava/util/ArrayList;)V

    .line 7
    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/handle/HandleHelper;->initHandleList(Ljava/util/ArrayList;)V

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->setPointList(Ljava/util/ArrayList;)V

    .line 9
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setInitialPolygonPoint(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/PointF;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 10
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->isInvalidInitialPointList(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    const/4 v3, 0x0

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 12
    invoke-static {v0, p1}, Lcom/sec/android/app/camera/cropper/handle/HandleHelper;->getVirtualHandleIdList(Landroid/graphics/RectF;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    .line 13
    invoke-static {v0, p1, v1}, Lcom/sec/android/app/camera/cropper/util/CropImageUtil;->getPointListWithRealPoint(Landroid/graphics/RectF;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/util/ArrayUtil;->createPointListFromBitmap(Landroid/graphics/Bitmap;)Ljava/util/ArrayList;

    move-result-object p1

    .line 15
    :goto_1
    new-instance v0, Landroid/util/Size;

    iget-object v1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->adjustPolygonBoundary(Landroid/util/Size;Ljava/util/ArrayList;)V

    .line 16
    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/polygon/PolygonHelper;->sortPointsClockwise(Ljava/util/ArrayList;)V

    .line 17
    invoke-static {p1}, Lcom/sec/android/app/camera/cropper/handle/HandleHelper;->initHandleList(Ljava/util/ArrayList;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setInitialPolygonPoint : created polygon point list = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CropImageView"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {v0, p1}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->setPointList(Ljava/util/ArrayList;)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setMinCropSize(I)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/cropper/polygon/Polygon;->setMinCropSize(I)V

    return-void
.end method

.method protected abstract setMinCropSizeByType(Lcom/sec/android/app/camera/cropper/polygon/Polygon;)V
.end method

.method public setOriginalImageInfo(Landroid/content/Context;Ljava/lang/String;FLandroid/net/Uri;ZZZZ)V
    .locals 11

    move-object v0, p0

    const/4 v1, 0x0

    .line 1
    iput-object v1, v0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    move/from16 v2, p7

    .line 2
    iput-boolean v2, v0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mIsUseThumbnail:Z

    move/from16 v2, p8

    .line 3
    iput-boolean v2, v0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mProRawOnlyPictureFormat:Z

    const-string v2, "CropImageView"

    if-nez p2, :cond_0

    const-string/jumbo v0, "setOriginalImageInfo : image path is null, return."

    .line 4
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 5
    :cond_0
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/cropper/util/FileUtil;->getPathType(Landroid/content/Context;Ljava/lang/String;)Lcom/sec/android/app/camera/cropper/util/CropConstants$PathType;

    move-result-object v3

    .line 6
    sget-object v4, Lcom/sec/android/app/camera/cropper/view/CropImageView$1;->$SwitchMap$com$sec$android$app$camera$cropper$util$CropConstants$PathType:[I

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v3, v4, v3

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 v1, 0x2

    if-eq v3, v1, :cond_1

    const/4 v1, 0x3

    if-eq v3, v1, :cond_1

    const-string/jumbo v0, "setOriginalImageInfo : Can not get original image information, return."

    .line 7
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    :cond_1
    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-object v3, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 8
    invoke-direct/range {v0 .. v5}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->setImageInfoFromInternalCache(Ljava/lang/String;FLandroid/net/Uri;ZZ)V

    goto/16 :goto_2

    .line 9
    :cond_2
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 10
    :try_start_0
    iget-boolean v3, v0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mIsUseThumbnail:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-direct {p0, v3, v7}, Lcom/sec/android/app/camera/cropper/view/CropImageView;->getBitmapSize(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/util/Size;

    move-result-object v3

    .line 12
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v5

    if-lez v5, :cond_3

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    if-lez v5, :cond_3

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v7, v3, v1}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 14
    iget-boolean v3, v0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mProRawOnlyPictureFormat:Z

    if-nez v3, :cond_5

    const-string v3, "image/x-adobe-dng"

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, v7}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->getOrientationWithUri(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v3

    invoke-static {v1, v3}, Lcom/sec/android/app/camera/cropper/util/BitmapUtil;->rotateImageByOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v1

    goto :goto_0

    .line 16
    :cond_3
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 17
    iput-boolean v4, v0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mIsUseThumbnail:Z

    goto :goto_0

    .line 18
    :cond_4
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/provider/MediaStore$Images$Media;->getBitmap(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 19
    :cond_5
    :goto_0
    new-instance v2, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    .line 20
    iget-boolean v3, v0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mIsUseThumbnail:Z

    if-eqz v3, :cond_6

    move v6, v4

    goto :goto_1

    :cond_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v7}, Lcom/sec/android/app/camera/cropper/util/DatabaseUtil;->getOrientationWithUri(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v3

    move v6, v3

    :goto_1
    move-object v3, v2

    move-object v4, v1

    move-object v5, p2

    move/from16 v8, p5

    move v9, p3

    move/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;-><init>(Landroid/graphics/Bitmap;Ljava/lang/String;ILandroid/net/Uri;ZFZ)V

    iput-object v2, v0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mOriginalImageInfo:Lcom/sec/android/app/camera/cropper/view/CropImageView$OriginalImageInfo;

    :goto_2
    return-void

    :catch_0
    const-string/jumbo v0, "setOriginalImageInfo : Can not get bitmap from image content uri : IOException"

    .line 21
    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setPolygon(Lcom/sec/android/app/camera/cropper/polygon/Polygon;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mPolygon:Lcom/sec/android/app/camera/cropper/polygon/Polygon;

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public setResizedBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/cropper/view/CropImageView;->mResizedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
