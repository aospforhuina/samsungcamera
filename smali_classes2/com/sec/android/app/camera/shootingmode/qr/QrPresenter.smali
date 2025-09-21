.class public Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;
.super Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;
.source "QrPresenter.java"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/qr/QrContract$Presenter;
.implements Lcom/sec/android/app/camera/interfaces/CallbackManager$QrCodeDetectionEventListener;
.implements Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDecoderListener;,
        Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$ImageDecoderListener;,
        Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter<",
        "Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;",
        ">;",
        "Lcom/sec/android/app/camera/shootingmode/qr/QrContract$Presenter;",
        "Lcom/sec/android/app/camera/interfaces/CallbackManager$QrCodeDetectionEventListener;",
        "Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "QrPresenter"


# instance fields
.field private mDecodedImage:Landroid/graphics/Bitmap;

.field private mOrientation:I

.field private mQrCodeResult:Lw5/p0;

.field private mQrData:Ljava/lang/String;

.field private mState:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;


# direct methods
.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;-><init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;I)V

    .line 2
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->IDLE:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mState:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    const/4 p1, 0x0

    .line 3
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mOrientation:I

    return-void
.end method

.method public constructor <init>(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;I)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;-><init>(Lcom/sec/android/app/camera/interfaces/Engine;Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;I)V

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->IDLE:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mState:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    const/4 p1, 0x0

    .line 6
    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mOrientation:I

    return-void
.end method

.method static synthetic access$000(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    return-object p0
.end method

.method static synthetic access$100(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    return-object p0
.end method

.method static synthetic access$400(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$600(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;)Lcom/sec/android/app/camera/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    return-object p0
.end method

.method static synthetic access$700(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;)Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    return-object p0
.end method

.method private convertPositionArrayAsFloat([I)[F
    .locals 2

    .line 1
    array-length p0, p1

    new-array p0, p0, [F

    const/4 v0, 0x0

    .line 2
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 3
    aget v1, p1, v0

    int-to-float v1, v1

    aput v1, p0, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object p0
.end method

.method static bridge synthetic d(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;)I
    .locals 0

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mOrientation:I

    return p0
.end method

.method private decodeImageUri(Ljava/lang/String;)V
    .locals 3

    const-string v0, "QrPresenter"

    const-string v1, "decodeImageFromUri"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$ImageDecoderListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$ImageDecoderListener;-><init>(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;Lcom/sec/android/app/camera/shootingmode/qr/a;)V

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/shootingmode/qr/ImageDecoderTask;->newInstance(Landroid/content/Context;Lcom/sec/android/app/camera/shootingmode/qr/ImageDecoderTask$ImageDecoderListener;)Lcom/sec/android/app/camera/shootingmode/qr/ImageDecoderTask;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/net/Uri;

    .line 3
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 4
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->DECODE_REQUESTED:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->setState(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;)V

    return-void
.end method

.method private decodeQrCode(Landroid/graphics/Bitmap;)V
    .locals 2

    const-string v0, "QrPresenter"

    const-string v1, "decodeQrCode"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    new-instance v0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDecoderListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDecoderListener;-><init>(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;Lcom/sec/android/app/camera/shootingmode/qr/b;)V

    invoke-static {v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;->newInstance(Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask$QrDecoderListener;)Lcom/sec/android/app/camera/shootingmode/qr/QrCodeDecoderTask;

    move-result-object p0

    const/4 v0, 0x1

    new-array v0, v0, [Landroid/graphics/Bitmap;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    .line 3
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;Landroid/graphics/Bitmap;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mDecodedImage:Landroid/graphics/Bitmap;

    return-void
.end method

.method private enableEngineCallbacks(Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object p0

    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->enableQrCodeDetectionEventCallback(Z)V

    return-void
.end method

.method private enableEngineEventListener(Z)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->getCallbackManager()Lcom/sec/android/app/camera/interfaces/CallbackManager;

    move-result-object v0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Lcom/sec/android/app/camera/interfaces/CallbackManager;->setQrCodeDetectionEventListener(Lcom/sec/android/app/camera/interfaces/CallbackManager$QrCodeDetectionEventListener;)V

    return-void
.end method

.method private enableQrDetection(Z)V
    .locals 3

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    const-wide/16 v0, 0x64

    const/4 v2, 0x1

    invoke-interface {p0, p1, v0, v1, v2}, Lcom/sec/android/app/camera/interfaces/Engine;->enableQrCodeDetection(ZJZ)V

    return-void
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;IIIII)Landroid/graphics/Matrix;
    .locals 0

    invoke-direct/range {p0 .. p5}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->getDisplayMatrix(IIIII)Landroid/graphics/Matrix;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;)Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;
    .locals 0

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->getState()Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    move-result-object p0

    return-object p0
.end method

.method private getDisplayMatrix(IIIII)Landroid/graphics/Matrix;
    .locals 3

    .line 1
    invoke-static {}, Lcom/sec/android/app/camera/util/factory/MatrixFactory;->create()Landroid/graphics/Matrix;

    move-result-object p0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    int-to-float p5, p5

    .line 3
    invoke-virtual {p0, p5}, Landroid/graphics/Matrix;->postRotate(F)Z

    int-to-float p5, p3

    const/high16 v0, 0x44fa0000    # 2000.0f

    div-float v1, p5, v0

    int-to-float v2, p4

    div-float v0, v2, v0

    .line 4
    invoke-virtual {p0, v1, v0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p5, v0

    div-float/2addr v2, v0

    .line 5
    invoke-virtual {p0, p5, v2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    sub-int/2addr p1, p3

    int-to-float p1, p1

    div-float/2addr p1, v0

    sub-int/2addr p2, p4

    int-to-float p2, p2

    div-float/2addr p2, v0

    .line 6
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    return-object p0
.end method

.method private getState()Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mState:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;Ljava/lang/String;[ILandroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->handleQrCodeDetected(Ljava/lang/String;[ILandroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    return-void
.end method

.method private handleLinkAction(Lw5/k0;Ly2/u;Z)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleLinkAction: actionType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v2}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "request_result"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    :try_start_0
    invoke-static {v0, p1, p2}, Lw5/d0;->v(Landroid/content/Context;Lw5/k0;Ly2/u;)V

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0, p1, p2}, Lw5/d0;->L(Landroid/content/Context;Lw5/k0;Ly2/u;)Landroid/content/Intent;

    move-result-object p2

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    const/4 v2, -0x1

    invoke-virtual {v0, v2, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 7
    :goto_0
    sget-object p2, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->EXECUTED:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->setState(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 8
    :catch_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleLinkAction: activity permission is denied, actionType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->handleLinkException(Z)V

    goto :goto_1

    .line 10
    :catch_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "handleLinkAction: activity not found, actionType="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    invoke-direct {p0, p3}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->handleLinkException(Z)V

    .line 12
    :goto_1
    invoke-virtual {p1}, Lw5/k0;->a()Ljava/lang/String;

    move-result-object p0

    const-string p1, "7512"

    invoke-static {p1, p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private handleLinkException(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->ERROR:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    invoke-direct {p0, v1}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->setState(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;)V

    if-eqz p1, :cond_0

    .line 3
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->showQrPopup()V

    goto :goto_0

    :cond_0
    const p0, 0x7f120479

    const/4 p1, 0x1

    .line 4
    invoke-static {v0, p0, p1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    :goto_0
    return-void
.end method

.method private handleQrCodeDetected(Ljava/lang/String;[ILandroid/graphics/Bitmap;Landroid/graphics/Matrix;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mQrData:Ljava/lang/String;

    .line 3
    invoke-static {v0, p1}, Lw5/o2;->z(Landroid/content/Context;Ljava/lang/String;)Lw5/p0;

    move-result-object p1

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mQrCodeResult:Lw5/p0;

    .line 4
    invoke-virtual {p1}, Lw5/p0;->i()Ljava/lang/String;

    move-result-object p1

    const-string v0, "7510"

    invoke-static {v0, p1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    sget-object p1, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->DETECTED:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->setState(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;)V

    .line 6
    invoke-direct {p0, p2}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->convertPositionArrayAsFloat([I)[F

    move-result-object p1

    .line 7
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p2, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {p2}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->hideDefaultViews()V

    .line 8
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p2, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->isDexOrientationLandscapeReverse()Z

    move-result p0

    invoke-interface {p2, p3, p1, p4, p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->startQrDetectAnimation(Landroid/graphics/Bitmap;[FLandroid/graphics/Matrix;Z)V

    return-void
.end method

.method private handleRequestedScanAction(Ljava/lang/String;Lw5/p0;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handleRequestedScanAction: scanType="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " resultType ="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lw5/p0;->l()Lw5/p2;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    invoke-static {p1}, Lw5/o0;->h(Ljava/lang/String;)Lw5/o0;

    move-result-object p1

    invoke-virtual {p2}, Lw5/p0;->l()Lw5/p2;

    move-result-object p2

    invoke-virtual {p1, p2}, Lw5/o0;->k(Lw5/p2;)Lw5/k0;

    move-result-object p1

    if-nez p1, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->showNotMatchedRequestedScanTypeErrorDialog()V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mQrCodeResult:Lw5/p0;

    invoke-virtual {p2}, Lw5/p0;->h()Ly2/u;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->handleLinkAction(Lw5/k0;Ly2/u;Z)V

    .line 5
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method private setState(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mState:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    return-void
.end method

.method private showQrPopup()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPopupLayerManager()Lcom/sec/android/app/camera/interfaces/PopupLayerManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;->QR_CODE:Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mQrData:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/PopupLayerManager;->showPopup(Lcom/sec/android/app/camera/interfaces/PopupLayerManager$PopupId;Ljava/lang/CharSequence;)Z

    return-void
.end method


# virtual methods
.method protected getQuickSettingItemList()Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/sec/android/app/camera/interfaces/CommandId;",
            ">;"
        }
    .end annotation

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected handleShutterButtonClick(Lcom/sec/android/app/camera/interfaces/CameraContext$InputType;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method protected initializeSettingChangedListenerKey()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mSettingChangedListenerKeys:Ljava/util/ArrayList;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public isViewClickable()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->isShootingModeActivated()Z

    move-result p0

    if-nez p0, :cond_0

    const-string p0, "QrPresenter"

    const-string v0, "isViewClickable: view click is not available because shooting mode is not activated"

    .line 2
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method protected onActivate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;->enableBottomBackground(Z)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewOverlayLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;->NONE:Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager$AeAfSupportUi;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/sec/android/app/camera/interfaces/PreviewOverlayLayerManager;->refreshAeAfProperty(Ljava/util/EnumSet;)V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v2, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QR_CODE:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v2

    invoke-interface {v0, v2, p0}, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;->registerListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    const/4 v0, 0x1

    .line 4
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->enableEngineEventListener(Z)V

    .line 5
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->enableEngineCallbacks(Z)V

    .line 6
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->enableQrDetection(Z)V

    .line 7
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v2, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {v2}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->showDefaultViews()V

    .line 8
    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v2, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    iget-object v3, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isSetupWizardFinished(Landroid/content/Context;)Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-interface {v2, v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->disableGalleryButton(Z)V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_SCANNER_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {v0, v2, v1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "QR_SCANNER_SELECTED_IMAGE_URI"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v2, "751"

    .line 11
    invoke-static {v2}, Lcom/sec/android/app/camera/logging/SaLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->decodeImageUri(Ljava/lang/String;)V

    .line 13
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->updateToDecodedImageLayout()V

    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->startQrRoiAnimation()V

    :goto_0
    return-void
.end method

.method public onCameraSettingChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;II)V
    .locals 0

    .line 1
    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    if-ne p1, p2, :cond_1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    const/4 p1, 0x1

    if-ne p3, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-interface {p0, p1}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->disableFlashButton(Z)V

    :cond_1
    return-void
.end method

.method public onConnectMakerPrepared(ILcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$ConnectionInfo;)V
    .locals 0

    return-void
.end method

.method public onDialogDismissed()V
    .locals 1

    const-string v0, "750"

    .line 1
    invoke-static {v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->setSAScreenId(Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->resetView()V

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->showDefaultViews()V

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->startQrRoiAnimation()V

    .line 5
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->IDLE:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->setState(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;)V

    return-void
.end method

.method public onFlashButtonClicked(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onFlashButtonClicked : activated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "QrPresenter"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_0

    const-string v0, "1"

    goto :goto_0

    :cond_0
    const-string v0, "0"

    :goto_0
    const-string v1, "7507"

    .line 2
    invoke-static {v1, v0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->QR_SCANNER_TORCH:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    if-eqz p1, :cond_1

    const/4 p1, 0x2

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    invoke-interface {p0, v0, p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->set(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    return-void
.end method

.method public onFlashButtonTouch(Landroid/view/MotionEvent;Z)Z
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    return v0

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraSettings:Lcom/sec/android/app/camera/interfaces/CameraSettings;

    sget-object p2, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->get(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v1, :cond_1

    const-string p1, "QrPresenter"

    const-string p2, "onFlashButtonTouch: returned because flash is restricted"

    .line 3
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->getInstance(Lcom/sec/android/app/camera/interfaces/CameraContext;)Lcom/sec/android/app/camera/provider/CameraTemperatureManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/sec/android/app/camera/provider/CameraTemperatureManager;->showFlashRestrictionToast()V

    return v1

    :cond_1
    return v0
.end method

.method public onGalleryButtonClicked()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->getState()Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->IDLE:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const-string v0, "QrPresenter"

    const-string v1, "onGalleryButtonClicked"

    .line 2
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3
    :try_start_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-static {v2}, Lcom/sec/android/app/camera/util/GalleryIntentHelper;->getGalleryIntentForQrScanner(Lcom/sec/android/app/camera/interfaces/CameraContext;)Landroid/content/Intent;

    move-result-object v2

    const/16 v3, 0x7f8

    invoke-virtual {v1, v2, v3}, Landroidx/activity/ComponentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    const-string v1, "7508"

    .line 4
    invoke-static {v1}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {v1}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->showBlackBackground()V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 6
    :catch_0
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p0

    const v1, 0x7f120186

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    const-string p0, "onGalleryButtonClicked : Activity is not founded."

    .line 7
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onInactivate()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->onInactivate()V

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->resetView()V

    .line 3
    sget-object v0, Lu3/b;->W0:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->resetFlashButton()V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->dismissDialog()V

    const/4 v0, 0x0

    .line 6
    iput-object v0, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mDecodedImage:Landroid/graphics/Bitmap;

    .line 7
    sget-object v0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->IDLE:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->setState(Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;)V

    const/4 v0, 0x0

    .line 8
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->enableQrDetection(Z)V

    .line 9
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->enableEngineCallbacks(Z)V

    .line 10
    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->enableEngineEventListener(Z)V

    .line 11
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getViewVisibilityEventManager()Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QR_CODE:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    invoke-static {v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager;->unregisterListener(Ljava/util/Set;Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$VisibilityChangeListener;)V

    const-string p0, "7509"

    .line 12
    invoke-static {p0}, Lcom/sec/android/app/camera/logging/SaLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public onOrientationChanged(I)V
    .locals 0

    iput p1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mOrientation:I

    return-void
.end method

.method public onQrCodeDetected(Ljava/lang/String;[ILandroid/graphics/Bitmap;)V
    .locals 7

    const-string v0, "QrPresenter"

    if-nez p3, :cond_0

    const-string p0, "onQRCodeDetected : returned because croppedQrImage is null!"

    .line 1
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 2
    :cond_0
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->getState()Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    move-result-object v1

    sget-object v2, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->IDLE:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    if-eq v1, v2, :cond_1

    const-string p0, "onQRCodeDetected : returned because QR code action is not finished"

    .line 3
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 4
    :cond_1
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {v1}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->isQrRoiAnimating()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string p0, "onQrCodeDetected: returned because QR guide rect is animating"

    .line 5
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onQRCodeDetected : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget v0, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mOrientation:I

    neg-int v0, v0

    .line 8
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/sec/android/app/camera/util/Util;->isDexStandAloneMode(Landroid/content/Context;)Z

    move-result v1

    const/16 v2, 0x5a

    if-eqz v1, :cond_4

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/Engine;->isDexOrientationLandscapeReverse()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0xb4

    move v6, v0

    move v0, v2

    goto :goto_0

    :cond_3
    const/16 v0, 0x10e

    const/4 v2, 0x0

    :cond_4
    move v6, v2

    .line 10
    :goto_0
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowWidth()I

    move-result v2

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCurrentWindowHeight()I

    move-result v3

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 11
    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v4

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v1

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v5

    move-object v1, p0

    .line 12
    invoke-direct/range {v1 .. v6}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->getDisplayMatrix(IIIII)Landroid/graphics/Matrix;

    move-result-object v1

    .line 13
    invoke-static {p3, v0}, Lcom/sec/android/app/camera/util/ImageUtils;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3, v1}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->handleQrCodeDetected(Ljava/lang/String;[ILandroid/graphics/Bitmap;Landroid/graphics/Matrix;)V

    return-void
.end method

.method public onQrDetectAnimationFinished()V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->getState()Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->DETECTED:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    const-string v2, "QrPresenter"

    if-eq v0, v1, :cond_0

    const-string p0, "onQrDetectAnimationFinished: returned because invalid state"

    .line 2
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v0, "onQrDetectAnimationFinished"

    .line 3
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "request_qr_scan_type"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v1, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {v1}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->announceQrScanned()V

    .line 6
    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mQrCodeResult:Lw5/p0;

    invoke-direct {p0, v0, v1}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->handleRequestedScanAction(Ljava/lang/String;Lw5/p0;)V

    return-void

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mQrCodeResult:Lw5/p0;

    invoke-virtual {v0}, Lw5/p0;->n()Z

    move-result v0

    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast v0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->announceQrScanned()V

    .line 9
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mQrCodeResult:Lw5/p0;

    invoke-virtual {v0}, Lw5/p0;->g()Lw5/k0;

    move-result-object v0

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mQrCodeResult:Lw5/p0;

    invoke-virtual {v1}, Lw5/p0;->h()Ly2/u;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->handleLinkAction(Lw5/k0;Ly2/u;Z)V

    .line 10
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isDexStandAloneMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 11
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->onDialogDismissed()V

    goto :goto_0

    .line 12
    :cond_2
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->showQrPopup()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onQrImageShowAnimationFinished()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    sget-object v0, Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;->QR_CODE_DETECTED:Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->playHaptic(Lcom/sec/android/app/camera/interfaces/CameraContext$HapticPattern;)V

    return-void
.end method

.method public onQrRoiAnimationFinished()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->getState()Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    move-result-object v0

    sget-object v1, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;->DECODE_REQUESTED:Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter$QrDetectionState;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mDecodedImage:Landroid/graphics/Bitmap;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->mOrientation:I

    invoke-static {v0, v1}, Lcom/sec/android/app/camera/util/ImageUtils;->getRotatedBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->decodeQrCode(Landroid/graphics/Bitmap;)V

    :cond_0
    return-void
.end method

.method public onStartPreviewPrepared(ILcom/sec/android/app/camera/interfaces/Capability;Lcom/sec/android/app/camera/interfaces/Engine$MakerSettings;)V
    .locals 0

    return-void
.end method

.method public onVisibilityChanged(Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;Z)V
    .locals 1

    .line 1
    sget-object v0, Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;->POPUP_QR_CODE:Lcom/sec/android/app/camera/interfaces/ViewVisibilityEventManager$ViewId;

    if-eq p1, v0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 2
    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mView:Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModeContract$View;

    check-cast p0, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;

    invoke-interface {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrContract$View;->startQrImageHideAnimation()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/shootingmode/qr/QrPresenter;->onDialogDismissed()V

    :goto_0
    return-void
.end method

.method protected refreshKeyScreenView()V
    .locals 1

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/abstraction/AbstractShootingModePresenter;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p0

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getKeyScreenLayerManager()Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;

    move-result-object p0

    const/16 v0, -0x21

    invoke-interface {p0, v0}, Lcom/sec/android/app/camera/interfaces/KeyScreenLayerManager;->disableView(I)V

    return-void
.end method
