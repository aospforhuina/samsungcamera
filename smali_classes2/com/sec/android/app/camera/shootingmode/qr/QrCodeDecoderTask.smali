.class Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;
.super Landroid/os/AsyncTask;
.source "QrCodeDecoderTask.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;,
        Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecoderListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Landroid/graphics/Bitmap;",
        "Ljava/lang/Void;",
        "Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;",
        ">;"
    }
.end annotation


# static fields
.field private static final MIN_SIZE:I = 0x64

.field private static final TAG:Ljava/lang/String; = "QrCodeDecoderTask"


# instance fields
.field private final mListener:Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecoderListener;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecoderListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;->mListener:Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecoderListener;

    return-void
.end method

.method private convertPositionToNormalizeArrayBase([III)V
    .locals 5

    const/4 p0, 0x0

    .line 1
    :goto_0
    array-length v0, p1

    if-ge p0, v0, :cond_0

    .line 2
    aget v0, p1, p0

    int-to-float v0, v0

    int-to-float v1, p2

    div-float/2addr v0, v1

    const/high16 v1, 0x44fa0000    # 2000.0f

    mul-float/2addr v0, v1

    const/high16 v2, 0x447a0000    # 1000.0f

    sub-float/2addr v0, v2

    float-to-int v0, v0

    .line 3
    aput v0, p1, p0

    add-int/lit8 v0, p0, 0x1

    .line 4
    aget v3, p1, v0

    int-to-float v3, v3

    int-to-float v4, p3

    div-float/2addr v3, v4

    mul-float/2addr v3, v1

    sub-float/2addr v3, v2

    float-to-int v1, v3

    .line 5
    aput v1, p1, v0

    add-int/lit8 p0, p0, 0x2

    goto :goto_0

    :cond_0
    return-void
.end method

.method private decodeQrData(Landroid/graphics/Bitmap;)Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;
    .locals 9

    .line 1
    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;->isDecodeAvailable(Landroid/graphics/Bitmap;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "decodeQrData: bitmap w="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "QrCodeDecoderTask"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    new-instance v0, Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    sget-object v3, Lcom/samsung/android/qrengine/QRBarcodeDecoder$ImageCaptureMode;->StillPhoto:Lcom/samsung/android/qrengine/QRBarcodeDecoder$ImageCaptureMode;

    sget-object v4, Lcom/samsung/android/qrengine/QRBarcodeDecoder$RecognitionTarget;->QR_DMC:Lcom/samsung/android/qrengine/QRBarcodeDecoder$RecognitionTarget;

    invoke-direct {v0, v3, v4}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;-><init>(Lcom/samsung/android/qrengine/QRBarcodeDecoder$ImageCaptureMode;Lcom/samsung/android/qrengine/QRBarcodeDecoder$RecognitionTarget;)V

    const/4 v3, 0x4

    new-array v3, v3, [I

    const/4 v4, 0x0

    aput v4, v3, v4

    const/4 v5, 0x1

    aput v4, v3, v5

    .line 4
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    const/4 v7, 0x2

    aput v6, v3, v7

    const/4 v6, 0x3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    aput v8, v3, v6

    invoke-virtual {v0, v3}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->setROI([I)Z

    .line 5
    sget-object v3, Lcom/samsung/android/qrengine/QRBarcodeDecoder$ThreadingMode;->SINGLE_THREAD_MODE:Lcom/samsung/android/qrengine/QRBarcodeDecoder$ThreadingMode;

    invoke-virtual {v0, v3}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->setThreadingMode(Lcom/samsung/android/qrengine/QRBarcodeDecoder$ThreadingMode;)V

    .line 6
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0, v3, v6}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->setImageSize(II)Z

    .line 7
    invoke-virtual {v0, p1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->process(Landroid/graphics/Bitmap;)I

    move-result v3

    .line 8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "decodeQrData: result="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, " getRecognizedObjectCount()="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecognizedObjectCount()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-lez v3, :cond_1

    .line 9
    invoke-virtual {v0}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecognizedObjectCount()I

    move-result v2

    if-lez v2, :cond_1

    .line 10
    new-instance v1, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;

    invoke-direct {v1}, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;-><init>()V

    .line 11
    sget-object v2, Ljava/util/Locale;->UK:Ljava/util/Locale;

    new-array v3, v7, [Ljava/lang/Object;

    .line 12
    invoke-virtual {v0, v4}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecognizedObjectType(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v4

    invoke-virtual {v0, v4}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecognizedObjectText(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    const-string v5, "%s:%s"

    .line 13
    invoke-static {v2, v5, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;->mQrData:Ljava/lang/String;

    const/16 v2, 0x8

    new-array v2, v2, [I

    .line 14
    iput-object v2, v1, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;->mQrPositionArray:[I

    .line 15
    invoke-virtual {v0, v4, v2}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecognizedObjectPoint(I[I)Z

    .line 16
    iget-object v2, v1, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;->mQrPositionArray:[I

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-direct {p0, v2, v3, p1}, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;->convertPositionToNormalizeArrayBase([III)V

    .line 17
    invoke-virtual {v0, v4}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecognizedObjectImage(I)Landroid/graphics/Bitmap;

    move-result-object p0

    iput-object p0, v1, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;->mCroppedQrImage:Landroid/graphics/Bitmap;

    .line 18
    :cond_1
    invoke-virtual {v0}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->release()V

    return-object v1
.end method

.method private isDecodeAvailable(Landroid/graphics/Bitmap;)Z
    .locals 3

    const/4 p0, 0x0

    const-string v0, "QrCodeDecoderTask"

    if-nez p1, :cond_0

    const-string p1, "isDecodeAvailable: Returned because bitmap is null"

    .line 1
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    const/16 v2, 0x64

    if-lt v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    if-ge v1, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0

    .line 3
    :cond_2
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDecodeAvailable: Returned because bitmap is too small. w="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " h="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method static newInstance(Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecoderListener;)Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;-><init>(Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecoderListener;)V

    return-object v0
.end method


# virtual methods
.method protected varargs doInBackground([Landroid/graphics/Bitmap;)Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;
    .locals 1

    const/4 v0, 0x0

    .line 2
    aget-object p1, p1, v0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;->decodeQrData(Landroid/graphics/Bitmap;)Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;->doInBackground([Landroid/graphics/Bitmap;)Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;

    move-result-object p0

    return-object p0
.end method

.method protected onPostExecute(Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    if-eqz p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;->mListener:Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecoderListener;

    iget-object v0, p1, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;->mQrData:Ljava/lang/String;

    iget-object v1, p1, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;->mQrPositionArray:[I

    iget-object p1, p1, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;->mCroppedQrImage:Landroid/graphics/Bitmap;

    invoke-interface {p0, v0, v1, p1}, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecoderListener;->onQrCodeDetected(Ljava/lang/String;[ILandroid/graphics/Bitmap;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;->mListener:Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecoderListener;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecoderListener;->onError()V

    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;

    invoke-virtual {p0, p1}, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;->onPostExecute(Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecodeResult;)V

    return-void
.end method
