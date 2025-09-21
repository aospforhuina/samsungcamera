.class public Lcom/samsung/android/qrengine/ScannerEngine;
.super Ljava/lang/Object;
.source "ScannerEngine.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/qrengine/ScannerEngine$BarcodeRecognizeTask;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String; = "SRCB/ScannerEngine"

.field static mPoints:[[F

.field private static mResultTexts:[Ljava/lang/String;


# instance fields
.field public barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

.field private barcodeTrackerCallbackList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/qrengine/BarcodeTrackerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private engineIsStart:Z

.field private engineSetting:Lcom/samsung/android/qrengine/EngineSetting;

.field private frameDataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/qrengine/FrameData;",
            ">;"
        }
    .end annotation
.end field

.field private frameResultMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/samsung/android/qrengine/FrameResult;",
            ">;"
        }
    .end annotation
.end field

.field private reverseColorMode:Z

.field public supportedSymbologyTypes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/qrengine/Symbology;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 1
    fill-array-data v0, :array_0

    const-class v1, F

    invoke-static {v1, v0}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[F

    sput-object v0, Lcom/samsung/android/qrengine/ScannerEngine;->mPoints:[[F

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    .line 2
    sput-object v0, Lcom/samsung/android/qrengine/ScannerEngine;->mResultTexts:[Ljava/lang/String;

    return-void

    nop

    :array_0
    .array-data 4
        0xa
        0x8
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->engineIsStart:Z

    .line 4
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/qrengine/ScannerEngine;->frameDataMap:Ljava/util/Map;

    .line 5
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/qrengine/ScannerEngine;->frameResultMap:Ljava/util/Map;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeTrackerCallbackList:Ljava/util/List;

    .line 7
    iput-boolean v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->engineIsStart:Z

    .line 8
    iput-boolean v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->reverseColorMode:Z

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/qrengine/ScannerEngine;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->frameDataMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/qrengine/ScannerEngine;Ljava/util/List;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/qrengine/ScannerEngine;->printResult(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/qrengine/ScannerEngine;)Ljava/util/Map;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->frameResultMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$300(Lcom/samsung/android/qrengine/ScannerEngine;)Ljava/util/List;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeTrackerCallbackList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/qrengine/ScannerEngine;)Lcom/samsung/android/qrengine/EngineSetting;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->engineSetting:Lcom/samsung/android/qrengine/EngineSetting;

    return-object p0
.end method

.method private getCodeImage([BLjava/util/List;Z)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Ljava/util/List<",
            "Lcom/samsung/android/qrengine/BarcodeData;",
            ">;Z)V"
        }
    .end annotation

    const-string p1, "SRCB/ScannerEngine"

    const-string p3, "getCodeImage E"

    .line 1
    invoke-static {p1, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_2

    .line 2
    iget-boolean p3, p0, Lcom/samsung/android/qrengine/ScannerEngine;->reverseColorMode:Z

    if-nez p3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/qrengine/BarcodeData;

    .line 5
    iget-boolean v3, p0, Lcom/samsung/android/qrengine/ScannerEngine;->reverseColorMode:Z

    .line 6
    iget-object v4, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    invoke-virtual {v4, v0, v3}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->getRecognizedObjectImage(II)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 7
    invoke-virtual {v2, v3}, Lcom/samsung/android/qrengine/BarcodeData;->setCodeImage(Landroid/graphics/Bitmap;)V

    .line 8
    invoke-interface {p3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 9
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 10
    invoke-interface {p2, p3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const-string p0, "getCodeImage X"

    .line 11
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-void
.end method

.method private printResult(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/qrengine/BarcodeData;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/qrengine/BarcodeData;

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "        barcodes type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/qrengine/BarcodeData;->getSymbology()Lcom/samsung/android/qrengine/Symbology;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", text: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/qrengine/BarcodeData;->getData()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SRCB/ScannerEngine"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public disableBarcodeTypes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/qrengine/Symbology;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->disableBarcodeTypes(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public enableBarcodeTypes(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/samsung/android/qrengine/Symbology;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableBarcodeTypes: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SRCB/ScannerEngine"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0, p1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->enableBarcodeTypes(Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public processFrame(Lcom/samsung/android/qrengine/FrameData;)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->engineIsStart:Z

    const-string v1, "SRCB/ScannerEngine"

    if-nez v0, :cond_0

    const-string p0, "Engine is not start"

    .line 2
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    if-eqz p1, :cond_2

    .line 3
    iget-object v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    if-nez v0, :cond_1

    goto :goto_0

    .line 4
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processFrame frameData id: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/qrengine/FrameData;->getId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5
    iget-object v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->frameDataMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/samsung/android/qrengine/FrameData;->getId()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    new-instance v0, Lcom/samsung/android/qrengine/ScannerEngine$BarcodeRecognizeTask;

    invoke-direct {v0, p0}, Lcom/samsung/android/qrengine/ScannerEngine$BarcodeRecognizeTask;-><init>(Lcom/samsung/android/qrengine/ScannerEngine;)V

    const/4 p0, 0x1

    new-array p0, p0, [Ljava/lang/Long;

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/samsung/android/qrengine/FrameData;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, p0, v1

    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void

    .line 7
    :cond_2
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "frameData is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public registerTrackerCallBack(Lcom/samsung/android/qrengine/BarcodeTrackerCallback;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeTrackerCallbackList:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeTrackerCallbackList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public removeFrame(J)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->frameResultMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->frameDataMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public resetTracking()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->frameDataMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 2
    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->frameResultMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public setImageSize(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->setImageSize(II)Z

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->engineSetting:Lcom/samsung/android/qrengine/EngineSetting;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1, p2, p1, p2}, Lcom/samsung/android/qrengine/EngineSetting;->setImageSize(IIII)V

    :cond_1
    return-void
.end method

.method public setImageSize(IIII)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->setImageSize(IIII)Z

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->engineSetting:Lcom/samsung/android/qrengine/EngineSetting;

    if-eqz p0, :cond_1

    .line 8
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/samsung/android/qrengine/EngineSetting;->setImageSize(IIII)V

    :cond_1
    return-void
.end method

.method public setROI([I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->setROI([I)Z

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->engineSetting:Lcom/samsung/android/qrengine/EngineSetting;

    if-eqz p0, :cond_1

    .line 4
    invoke-virtual {p0, p1}, Lcom/samsung/android/qrengine/EngineSetting;->setROI([I)V

    :cond_1
    return-void
.end method

.method public setReverseColorMode(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/qrengine/ScannerEngine;->reverseColorMode:Z

    return-void
.end method

.method public startEngine(Landroid/content/Context;Lcom/samsung/android/qrengine/EngineSetting;)Ljava/lang/Boolean;
    .locals 4

    const-string v0, "SRCB/ScannerEngine"

    const-string/jumbo v1, "startEngine E"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-boolean v1, p0, Lcom/samsung/android/qrengine/ScannerEngine;->engineIsStart:Z

    if-eqz v1, :cond_0

    .line 3
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 4
    :cond_0
    new-instance v1, Lcom/samsung/android/qrengine/EngineSetting;

    invoke-direct {v1, p2}, Lcom/samsung/android/qrengine/EngineSetting;-><init>(Lcom/samsung/android/qrengine/EngineSetting;)V

    iput-object v1, p0, Lcom/samsung/android/qrengine/ScannerEngine;->engineSetting:Lcom/samsung/android/qrengine/EngineSetting;

    .line 5
    sget-object v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder$ImageCaptureMode;->StillPhoto:Lcom/samsung/android/qrengine/QRBarcodeDecoder$ImageCaptureMode;

    .line 6
    iget-boolean v2, p2, Lcom/samsung/android/qrengine/EngineSetting;->trackingMode:Z

    if-eqz v2, :cond_1

    .line 7
    sget-object v1, Lcom/samsung/android/qrengine/QRBarcodeDecoder$ImageCaptureMode;->ContiniousVideo:Lcom/samsung/android/qrengine/QRBarcodeDecoder$ImageCaptureMode;

    .line 8
    :cond_1
    new-instance v2, Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    sget-object v3, Lcom/samsung/android/qrengine/QRBarcodeDecoder$RecognitionTarget;->Barcode_QR_DMC:Lcom/samsung/android/qrengine/QRBarcodeDecoder$RecognitionTarget;

    invoke-direct {v2, p1, v1, v3}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;-><init>(Landroid/content/Context;Lcom/samsung/android/qrengine/QRBarcodeDecoder$ImageCaptureMode;Lcom/samsung/android/qrengine/QRBarcodeDecoder$RecognitionTarget;)V

    iput-object v2, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    .line 9
    iget p1, p2, Lcom/samsung/android/qrengine/EngineSetting;->imageWidth:I

    iget v1, p2, Lcom/samsung/android/qrengine/EngineSetting;->imageHeight:I

    invoke-virtual {v2, p1, v1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->setImageSize(II)Z

    .line 10
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "startEngine imageWidth: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/qrengine/EngineSetting;->imageWidth:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", height: "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p2, Lcom/samsung/android/qrengine/EngineSetting;->imageHeight:I

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    iget-object p1, p2, Lcom/samsung/android/qrengine/EngineSetting;->scanArea:[I

    const/4 v1, 0x1

    if-eqz p1, :cond_2

    .line 12
    iget-object v2, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    invoke-virtual {v2, p1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->setROI([I)Z

    goto :goto_0

    :cond_2
    const/4 p1, 0x4

    new-array p1, p1, [I

    const/4 v2, 0x0

    aput v2, p1, v2

    aput v2, p1, v1

    const/4 v2, 0x2

    .line 13
    iget v3, p2, Lcom/samsung/android/qrengine/EngineSetting;->imageWidth:I

    aput v3, p1, v2

    const/4 v2, 0x3

    iget v3, p2, Lcom/samsung/android/qrengine/EngineSetting;->imageHeight:I

    aput v3, p1, v2

    .line 14
    iget-object v2, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    invoke-virtual {v2, p1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->setROI([I)Z

    .line 15
    :goto_0
    iput-boolean v1, p0, Lcom/samsung/android/qrengine/ScannerEngine;->engineIsStart:Z

    .line 16
    iget-object p1, p2, Lcom/samsung/android/qrengine/EngineSetting;->supportedSymbologyTypes:Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/samsung/android/qrengine/ScannerEngine;->enableBarcodeTypes(Ljava/util/List;)V

    const-string/jumbo p0, "startEngine X"

    .line 17
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public stopEngine()V
    .locals 2

    const-string v0, "SRCB/ScannerEngine"

    const-string/jumbo v1, "stopEngine E"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcom/samsung/android/qrengine/ScannerEngine;->engineIsStart:Z

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/qrengine/ScannerEngine;->resetTracking()V

    .line 4
    iget-object v1, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Lcom/samsung/android/qrengine/QRBarcodeDecoder;->release()V

    const/4 v1, 0x0

    .line 6
    iput-object v1, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeInstance:Lcom/samsung/android/qrengine/QRBarcodeDecoder;

    :cond_0
    const-string/jumbo p0, "stopEngine X"

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public unregisterTrackerCallback(Lcom/samsung/android/qrengine/BarcodeTrackerCallback;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/samsung/android/qrengine/ScannerEngine;->barcodeTrackerCallbackList:Ljava/util/List;

    if-eqz p0, :cond_0

    .line 2
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method
