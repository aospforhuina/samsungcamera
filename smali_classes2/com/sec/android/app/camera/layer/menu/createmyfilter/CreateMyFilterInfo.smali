.class Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;
.super Ljava/lang/Object;
.source "CreateMyFilterInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;,
        Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$BitmapInfoInitializeListener;,
        Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "CreateMyFilterInfo"

.field private static final THUMBNAIL_IMAGE_SCALE_FACTOR:I = 0x2


# instance fields
.field private mAuxData:[B

.field private mBitmapInfoInitializeListener:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$BitmapInfoInitializeListener;

.field private final mContext:Landroid/content/Context;

.field private mCropRect:Landroid/graphics/Rect;

.field private mDecodingTask:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;

.field private mFeaturesData:[F

.field private mJsonData:Ljava/lang/String;

.field private mMode:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

.field private mMyFilterLut:Landroid/graphics/Bitmap;

.field private mSelectedBitmap:Landroid/graphics/Bitmap;

.field private mSelectedImagePath:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$BitmapInfoInitializeListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mCropRect:Landroid/graphics/Rect;

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedImagePath:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mMyFilterLut:Landroid/graphics/Bitmap;

    .line 6
    sget-object v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;->NORMAL:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    iput-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mMode:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    .line 7
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mJsonData:Ljava/lang/String;

    const/high16 v0, 0x10000

    new-array v0, v0, [B

    .line 8
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mAuxData:[B

    const/16 v0, 0x80

    new-array v0, v0, [F

    .line 9
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mFeaturesData:[F

    .line 10
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mContext:Landroid/content/Context;

    .line 11
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mBitmapInfoInitializeListener:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$BitmapInfoInitializeListener;

    return-void
.end method

.method static bridge synthetic a(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;)Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$BitmapInfoInitializeListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mBitmapInfoInitializeListener:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$BitmapInfoInitializeListener;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;)Z
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->setBitmapInfo()Z

    move-result p0

    return p0
.end method

.method private cancelDecodingTask()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mDecodingTask:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->FINISHED:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mDecodingTask:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mDecodingTask:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;

    :cond_1
    return-void
.end method

.method private isNeedToRotateImageThumbnail(Ljava/lang/String;)Z
    .locals 0

    .line 1
    sget-object p0, Lu3/b;->a3:Lu3/b;

    invoke-static {p0}, Lu3/d;->e(Lu3/b;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const-string p0, "image/x-adobe-dng"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method private isRetryImage(Ljava/lang/String;Landroid/graphics/Rect;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mMyFilterLut:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedImagePath:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    :cond_1
    if-eqz p2, :cond_2

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mCropRect:Landroid/graphics/Rect;

    invoke-static {p0, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x1

    return p0
.end method

.method private setBitmapInfo()Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedImagePath:Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CreateMyFilterInfo"

    if-nez v0, :cond_0

    const-string p0, "setBitmapInfo : mSelectedImagePath null it\'s not initialize info, return."

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 3
    :cond_0
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 4
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/util/ImageUtils;->getBitmapSize(Landroid/content/ContentResolver;Landroid/net/Uri;)Landroid/util/Size;

    move-result-object v3

    .line 5
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    const/16 v5, 0x12c

    const-string v6, ", height = "

    if-ge v4, v5, :cond_1

    .line 6
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "setBitmapInfo : bitmap size is small, width = "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", return."

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 7
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v3, v5}, Landroid/content/ContentResolver;->loadThumbnail(Landroid/net/Uri;Landroid/util/Size;Landroid/os/CancellationSignal;)Landroid/graphics/Bitmap;

    move-result-object v3

    iput-object v3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    .line 8
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->isNeedToRotateImageThumbnail(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 9
    iget-object v3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    iget-object v4, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/sec/android/app/camera/util/ImageUtils;->getImageOrientation(Landroid/content/ContentResolver;Landroid/net/Uri;)I

    move-result v0

    invoke-static {v3, v0}, Lcom/sec/android/app/camera/cropper/util/BitmapUtil;->rotateImageByOrientation(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setBitmapInfo : selected bitmap width = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0

    :catch_0
    const-string p0, "setBitmapInfo: loadThumbnail failed."

    .line 11
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1
.end method

.method private setMode(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->isRetryImage(Ljava/lang/String;Landroid/graphics/Rect;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;->RETRY:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mMode:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    goto :goto_0

    .line 3
    :cond_0
    sget-object p1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;->NORMAL:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mMode:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    .line 4
    :goto_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "setMode : "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mMode:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    invoke-virtual {p0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "CreateMyFilterInfo"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private startDecodingTask()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->cancelDecodingTask()V

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;-><init>(Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;Lcom/sec/android/app/camera/layer/menu/createmyfilter/a;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mDecodingTask:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$DecodingTask;

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 3
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method clear()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mBitmapInfoInitializeListener:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$BitmapInfoInitializeListener;

    .line 2
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    .line 3
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mMyFilterLut:Landroid/graphics/Bitmap;

    .line 4
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mJsonData:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mAuxData:[B

    .line 6
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->cancelDecodingTask()V

    return-void
.end method

.method clearSelectedImagePath()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedImagePath:Ljava/lang/String;

    return-void
.end method

.method getCenterCroppedBitmapArray()[B
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    const/16 v2, 0x12c

    if-ge v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    mul-int/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    div-int/2addr v0, v1

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    mul-int/2addr v0, v2

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    div-int/2addr v0, v1

    move v4, v2

    move v2, v0

    move v0, v4

    .line 4
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v3, 0x2

    invoke-static {p0, v2, v0, v1, v3}, Lcom/sec/android/app/camera/util/ImageUtils;->getResizedBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    invoke-static {p0}, Lcom/sec/android/app/camera/util/ImageUtils;->getCenterCroppedBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 5
    invoke-static {p0}, Lcom/sec/android/app/camera/util/ImageUtils;->convertBitmapToByteArray(Landroid/graphics/Bitmap;)[B

    move-result-object p0

    return-object p0
.end method

.method getCropRect()Landroid/graphics/Rect;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mCropRect:Landroid/graphics/Rect;

    return-object p0
.end method

.method getMode()Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mMode:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    return-object p0
.end method

.method getMyFilterAuxData()[B
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mAuxData:[B

    return-object p0
.end method

.method getMyFilterFeatureData()[F
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mFeaturesData:[F

    return-object p0
.end method

.method getMyFilterJsonData()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mJsonData:Ljava/lang/String;

    return-object p0
.end method

.method getMyFilterLut()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mMyFilterLut:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method getSelectedBitmap()Landroid/graphics/Bitmap;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method getSelectedImagePath()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedImagePath:Ljava/lang/String;

    return-object p0
.end method

.method getThumbnailBitmap(Landroid/util/Size;)Landroid/graphics/Bitmap;
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v0

    .line 2
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result p1

    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700ca

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    float-to-int v0, p1

    move p1, v0

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    .line 5
    iget-object v2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v3, v1

    int-to-float v4, v2

    div-float/2addr v3, v4

    int-to-float v4, v0

    int-to-float v5, p1

    div-float/2addr v4, v5

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    mul-int/2addr v2, v0

    .line 6
    div-int p1, v2, v1

    goto :goto_0

    :cond_2
    mul-int/2addr v1, p1

    .line 7
    div-int v0, v1, v2

    .line 8
    :goto_0
    iget-object p0, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    const/4 v2, 0x2

    invoke-static {p0, v0, p1, v1, v2}, Lcom/sec/android/app/camera/util/ImageUtils;->getResizedBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method initializeInfo(Ljava/lang/String;Landroid/graphics/Rect;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->setMode(Ljava/lang/String;Landroid/graphics/Rect;)V

    .line 2
    invoke-virtual {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->getMode()Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;->RETRY:Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo$CreateMyFilterMode;

    if-eq v0, v1, :cond_0

    .line 3
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedImagePath:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mCropRect:Landroid/graphics/Rect;

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->startDecodingTask()V

    :cond_0
    return-void
.end method

.method setCropRect(Landroid/graphics/Rect;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mCropRect:Landroid/graphics/Rect;

    return-void
.end method

.method setMyFilterData(Landroid/graphics/Bitmap;Ljava/lang/String;[B[F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mMyFilterLut:Landroid/graphics/Bitmap;

    .line 2
    iput-object p2, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mJsonData:Ljava/lang/String;

    .line 3
    iput-object p3, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mAuxData:[B

    .line 4
    iput-object p4, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mFeaturesData:[F

    return-void
.end method

.method setSelectedBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/menu/createmyfilter/CreateMyFilterInfo;->mSelectedBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
