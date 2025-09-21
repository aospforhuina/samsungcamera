.class Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;
.super Ljava/lang/Object;
.source "PreviewSurfaceManager.java"


# static fields
.field private static final DELAY_TIME_TO_WAIT_SURFACE_BUFFER_DATA_READY:I = 0x64

.field private static final TAG:Ljava/lang/String; = "PreviewSurfaceManager"


# instance fields
.field private final mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

.field private final mDummyImageReaderMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroid/media/ImageReader;",
            ">;"
        }
    .end annotation
.end field

.field private mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

.field private final mExtraSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mExtraSurfaceView:Landroid/view/SurfaceView;

.field private mFixedSurfaceSize:Landroid/util/Size;

.field private mHandler:Landroid/os/Handler;

.field private mHandlerThread:Landroid/os/HandlerThread;

.field private mIsExtraPreviewSurfaceCreated:Z

.field private mIsFunPreviewSurfaceCreated:Z

.field private mIsPreviewSurfaceCreated:Z

.field private mIsRetryTakePreviewSnapshot:Z

.field private mIsStartFunProcessorRequested:Z

.field private mIsWaitingSurfaceTexture:Z

.field private mLayoutParamsFunTextureView:Landroid/widget/FrameLayout$LayoutParams;

.field private final mListener:Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;

.field private final mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field private final mSurfaceTextureFunListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private final mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

.field private mSurfaceView:Landroid/view/SurfaceView;

.field private mTextureView:Landroid/view/TextureView;

.field private mTextureViewFun:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraContext;Lcom/sec/android/app/camera/interfaces/Engine;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mDummyImageReaderMap:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 3
    invoke-static {v0, v0}, Lcom/sec/android/app/camera/util/factory/SizeFactory;->create(II)Landroid/util/Size;

    move-result-object v1

    iput-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mFixedSurfaceSize:Landroid/util/Size;

    .line 4
    iput-boolean v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsPreviewSurfaceCreated:Z

    .line 5
    iput-boolean v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsFunPreviewSurfaceCreated:Z

    .line 6
    iput-boolean v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsStartFunProcessorRequested:Z

    .line 7
    iput-boolean v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsExtraPreviewSurfaceCreated:Z

    .line 8
    iput-boolean v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsRetryTakePreviewSnapshot:Z

    .line 9
    iput-boolean v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsWaitingSurfaceTexture:Z

    .line 10
    new-instance v1, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$1;-><init>(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mExtraSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 11
    new-instance v1, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$2;

    invoke-direct {v1, p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$2;-><init>(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)V

    iput-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    .line 12
    new-instance v2, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$3;

    invoke-direct {v2, p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$3;-><init>(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)V

    iput-object v2, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 13
    new-instance v3, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;

    invoke-direct {v3, p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager$4;-><init>(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)V

    iput-object v3, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceTextureFunListener:Landroid/view/TextureView$SurfaceTextureListener;

    .line 14
    iput-object p2, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    .line 15
    iput-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    .line 16
    check-cast p2, Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;

    iput-object p2, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mListener:Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;

    .line 17
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    const-string p2, "CreateSurface"

    .line 18
    invoke-static {p2, v0}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    const/4 p2, 0x1

    const-string v0, "Surface - CreateSurface"

    .line 19
    invoke-static {v0, p2}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 20
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    const p2, 0x7f0a00e7

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/SurfaceView;

    iput-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    .line 21
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 22
    invoke-interface {p0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    goto :goto_0

    .line 23
    :cond_0
    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    const p2, 0x7f0a00e9

    invoke-virtual {p1, p2}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureView:Landroid/view/TextureView;

    .line 24
    invoke-virtual {p1, v2}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public static synthetic a(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->lambda$takePreviewSurfaceSnapshot$2(Landroid/graphics/Bitmap;I)V

    return-void
.end method

.method public static synthetic b(IILandroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->lambda$setFixedSurfaceSize$0(IILandroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method public static synthetic c(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/view/Surface;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->lambda$takePreviewSurfaceSnapshot$3(Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/view/Surface;)V

    return-void
.end method

.method public static synthetic d(IILandroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->lambda$setFixedSurfaceSize$1(IILandroid/graphics/SurfaceTexture;)V

    return-void
.end method

.method static bridge synthetic e(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Lcom/sec/android/app/camera/interfaces/Engine;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mFixedSurfaceSize:Landroid/util/Size;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsWaitingSurfaceTexture:Z

    return p0
.end method

.method private handlePixelCopyResult(ILandroid/graphics/Bitmap;)V
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getResizablePreviewOrientation()I

    move-result p1

    .line 3
    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {p2, v1}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 4
    invoke-static {p2, p1, v0}, Lcom/sec/android/app/camera/util/ImageUtils;->rotateAndMirror(Landroid/graphics/Bitmap;IZ)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 5
    iget-object p2, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p2

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object p2

    invoke-interface {p2, p1}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->onPreviewSnapShotTaken(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->onPreviewSnapShotTaken(Landroid/graphics/Bitmap;)V

    goto :goto_0

    .line 7
    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "handlePixelCopyResult error : "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isRetry :"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsRetryTakePreviewSnapshot:Z

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v1, "PreviewSurfaceManager"

    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p2, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p2}, Lcom/sec/android/app/camera/interfaces/Engine;->isEffectProcessorActivated()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 9
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->takeEffectPreviewSnapshot()V

    return-void

    .line 10
    :cond_2
    iget-boolean p2, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsRetryTakePreviewSnapshot:Z

    if-nez p2, :cond_3

    const/4 p2, 0x3

    if-ne p1, p2, :cond_3

    const/4 p1, 0x1

    .line 11
    iput-boolean p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsRetryTakePreviewSnapshot:Z

    .line 12
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mHandler:Landroid/os/Handler;

    new-instance p2, Lcom/sec/android/app/camera/preview/f;

    invoke-direct {p2, p0}, Lcom/sec/android/app/camera/preview/f;-><init>(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)V

    const-wide/16 v0, 0x64

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    .line 13
    :cond_3
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getLayerManager()Lcom/sec/android/app/camera/interfaces/LayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/LayerManager;->getPreviewAnimationLayerManager()Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;

    move-result-object p1

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager;->onPreviewSnapShotError()V

    .line 14
    :goto_0
    iput-boolean v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsRetryTakePreviewSnapshot:Z

    .line 15
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mEngine:Lcom/sec/android/app/camera/interfaces/Engine;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/Engine;->notifyTakePreviewSnapShot()V

    return-void
.end method

.method static bridge synthetic i(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mListener:Lcom/sec/android/app/camera/interfaces/PreviewManager$PreviewSurfaceStateChangedListener;

    return-object p0
.end method

.method private isResetSurfacePositionRequired()Z
    .locals 3

    .line 1
    sget-object v0, Lu3/b;->b:Lu3/b;

    invoke-static {v0}, Lu3/d;->e(Lu3/b;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getDisplayRotation()I

    move-result v0

    if-ne v0, v2, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p0

    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    if-ne p0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method static bridge synthetic j(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method static bridge synthetic k(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureView:Landroid/view/TextureView;

    return-object p0
.end method

.method static bridge synthetic l(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;)Landroid/view/TextureView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureViewFun:Landroid/view/TextureView;

    return-object p0
.end method

.method private static synthetic lambda$setFixedSurfaceSize$0(IILandroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    return-void
.end method

.method private static synthetic lambda$setFixedSurfaceSize$1(IILandroid/graphics/SurfaceTexture;)V
    .locals 0

    invoke-virtual {p2, p0, p1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    return-void
.end method

.method private synthetic lambda$takePreviewSurfaceSnapshot$2(Landroid/graphics/Bitmap;I)V
    .locals 0

    invoke-direct {p0, p2, p1}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->handlePixelCopyResult(ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private synthetic lambda$takePreviewSurfaceSnapshot$3(Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/view/Surface;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mHandler:Landroid/os/Handler;

    invoke-static {p3, p1, p2, p0}, Landroid/view/PixelCopy;->request(Landroid/view/Surface;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;Landroid/os/Handler;)V

    return-void
.end method

.method static bridge synthetic m(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsExtraPreviewSurfaceCreated:Z

    return-void
.end method

.method static bridge synthetic n(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsFunPreviewSurfaceCreated:Z

    return-void
.end method

.method static bridge synthetic o(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsPreviewSurfaceCreated:Z

    return-void
.end method

.method static bridge synthetic p(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsStartFunProcessorRequested:Z

    return-void
.end method

.method static bridge synthetic q(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsWaitingSurfaceTexture:Z

    return-void
.end method

.method static bridge synthetic r(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Landroid/graphics/SurfaceTexture;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-void
.end method

.method private resetSurfacePosition()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->semResetRenderNodePosition()V

    return-void
.end method


# virtual methods
.method createExtraSurface(Landroid/view/SurfaceView;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "createExtraSurface : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreviewSurfaceManager"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2
    iput-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    .line 3
    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mExtraSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {p1, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    :cond_0
    return-void
.end method

.method getCurrentPreviewSurface(I)Landroid/view/Surface;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Landroid/view/Surface;

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->getCameraId()I

    move-result v0

    invoke-static {v0}, Lcom/sec/android/app/camera/engine/request/CameraId;->getMainCameraId(I)I

    move-result v0

    if-eq v0, p1, :cond_1

    .line 4
    new-instance p1, Landroid/graphics/SurfaceTexture;

    const/4 v0, 0x0

    invoke-direct {p1, v0}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mFixedSurfaceSize:Landroid/util/Size;

    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mFixedSurfaceSize:Landroid/util/Size;

    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 6
    new-instance p1, Landroid/view/Surface;

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mDummySurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {p1, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    return-object p1

    .line 7
    :cond_1
    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method getDummyRecordingSurface(ILcom/sec/android/app/camera/interfaces/Resolution;)Landroid/view/Surface;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mDummyImageReaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mDummyImageReaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Lcom/sec/android/app/camera/interfaces/Resolution;->getHeight()I

    move-result p2

    const/16 v3, 0x22

    const/4 v4, 0x3

    invoke-static {v2, p2, v3, v4}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mDummyImageReaderMap:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/ImageReader;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, p0

    check-cast p1, Landroid/media/ImageReader;

    invoke-virtual {p0}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method getExtraPreviewSurface()Landroid/view/Surface;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    invoke-interface {p0}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    return-object p0
.end method

.method getExtraSurfaceView()Landroid/view/SurfaceView;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    return-object p0
.end method

.method getFixedSurfaceSize()Landroid/util/Size;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mFixedSurfaceSize:Landroid/util/Size;

    return-object p0
.end method

.method public getFunModeSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureViewFun:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    return-object p0
.end method

.method getSurfaceCallback()Landroid/view/SurfaceHolder$Callback;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceCallback:Landroid/view/SurfaceHolder$Callback;

    return-object p0
.end method

.method getSurfaceHolder()Landroid/view/SurfaceHolder;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p0

    return-object p0
.end method

.method getSurfaceTextureListener()Landroid/view/TextureView$SurfaceTextureListener;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceTextureListener:Landroid/view/TextureView$SurfaceTextureListener;

    return-object p0
.end method

.method isExtraPreviewSurfaceCreated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsExtraPreviewSurfaceCreated:Z

    return p0
.end method

.method isFunPreviewSurfaceCreated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsFunPreviewSurfaceCreated:Z

    return p0
.end method

.method isPreviewSurfaceCreated()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsPreviewSurfaceCreated:Z

    return p0
.end method

.method mIsStartFunProcessorRequested()Z
    .locals 0

    iget-boolean p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsStartFunProcessorRequested:Z

    return p0
.end method

.method setFixedSurfaceSize(II)V
    .locals 1

    .line 1
    invoke-static {p1, p2}, Lcom/sec/android/app/camera/util/factory/SizeFactory;->create(II)Landroid/util/Size;

    move-result-object v0

    iput-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mFixedSurfaceSize:Landroid/util/Size;

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 3
    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 4
    invoke-direct {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->isResetSurfacePositionRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->resetSurfacePosition()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 8
    :cond_1
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureViewFun:Landroid/view/TextureView;

    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/preview/g;

    invoke-direct {v0, p2, p1}, Lcom/sec/android/app/camera/preview/g;-><init>(II)V

    .line 10
    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    goto :goto_0

    .line 11
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureView:Landroid/view/TextureView;

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/sec/android/app/camera/preview/h;

    invoke-direct {v0, p1, p2}, Lcom/sec/android/app/camera/preview/h;-><init>(II)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setFunTextureViewParams(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mLayoutParamsFunTextureView:Landroid/widget/FrameLayout$LayoutParams;

    return-void
.end method

.method setWaitingSurfaceTextureFlag()V
    .locals 2

    const-string v0, "PreviewSurfaceManager"

    const-string v1, "isWaitingSurfaceTexture"

    .line 1
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsWaitingSurfaceTexture:Z

    return-void
.end method

.method start()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getVisibility()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    const-string v0, "CreateSurface"

    .line 3
    invoke-static {v0, v1}, Lcom/sec/android/app/TraceWrapper;->asyncTraceBegin(Ljava/lang/String;I)V

    const/4 v0, 0x1

    const-string v2, "Surface - CreateSurface"

    .line 4
    invoke-static {v2, v0}, Lcom/sec/android/app/camera/util/PerformanceLog;->log(Ljava/lang/String;Z)V

    .line 5
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 6
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", layout param width="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->width:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "PreviewSurfaceManager"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/SurfaceView;->setVisibility(I)V

    goto :goto_0

    .line 10
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 11
    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 12
    :cond_2
    :goto_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "PreviewSurfaceManagerHandlerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 13
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 14
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public startFunModeSurfaceTexture(Z)V
    .locals 2

    const/4 v0, 0x4

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureViewFun:Landroid/view/TextureView;

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    const v0, 0x7f0a00e8

    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/TextureView;

    iput-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureViewFun:Landroid/view/TextureView;

    .line 3
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceTextureFunListener:Landroid/view/TextureView$SurfaceTextureListener;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setSurfaceTextureListener(Landroid/view/TextureView$SurfaceTextureListener;)V

    .line 4
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureViewFun:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mLayoutParamsFunTextureView:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 5
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureViewFun:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setVisibility(I)V

    .line 6
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureViewFun:Landroid/view/TextureView;

    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mLayoutParamsFunTextureView:Landroid/widget/FrameLayout$LayoutParams;

    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 9
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureViewFun:Landroid/view/TextureView;

    invoke-virtual {p1, v1}, Landroid/view/TextureView;->setVisibility(I)V

    const/4 p1, 0x1

    .line 10
    iput-boolean p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsFunPreviewSurfaceCreated:Z

    .line 11
    iput-boolean v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsStartFunProcessorRequested:Z

    goto :goto_0

    .line 12
    :cond_1
    iget-object p1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureViewFun:Landroid/view/TextureView;

    if-eqz p1, :cond_2

    .line 13
    iput-boolean v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsStartFunProcessorRequested:Z

    .line 14
    iput-boolean v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsFunPreviewSurfaceCreated:Z

    .line 15
    invoke-virtual {p1, v0}, Landroid/view/TextureView;->setVisibility(I)V

    .line 16
    :cond_2
    iget-object p0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    const/high16 p1, 0x3f800000    # 1.0f

    invoke-virtual {p0, p1}, Landroid/view/SurfaceView;->setAlpha(F)V

    :goto_0
    return-void
.end method

.method stop()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    const/4 v1, 0x0

    const/4 v2, 0x4

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 3
    iput-boolean v3, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsPreviewSurfaceCreated:Z

    .line 4
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, v2}, Landroid/view/SurfaceView;->setVisibility(I)V

    .line 6
    iput-boolean v3, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsExtraPreviewSurfaceCreated:Z

    .line 7
    iput-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mExtraSurfaceView:Landroid/view/SurfaceView;

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureView:Landroid/view/TextureView;

    if-eqz v0, :cond_1

    .line 9
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 10
    iput-boolean v3, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsWaitingSurfaceTexture:Z

    .line 11
    :cond_1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mTextureViewFun:Landroid/view/TextureView;

    if-eqz v0, :cond_2

    .line 12
    iput-boolean v3, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsFunPreviewSurfaceCreated:Z

    .line 13
    iput-boolean v3, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mIsStartFunProcessorRequested:Z

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/TextureView;->setVisibility(I)V

    .line 15
    :cond_2
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_3

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    .line 17
    :try_start_0
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    :catch_0
    iput-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 19
    iput-object v1, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mHandler:Landroid/os/Handler;

    :cond_3
    return-void
.end method

.method takePreviewSurfaceSnapshot()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v0

    invoke-interface {v0}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getPreviewLayoutRect()Landroid/graphics/Rect;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 4
    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->isFunPreviewSurfaceCreated()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    new-instance v3, Landroid/view/Surface;

    invoke-virtual {p0}, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->getFunModeSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v3, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/sec/android/app/camera/interfaces/ActivityContext;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/sec/android/app/camera/util/Util;->isDexDesktopMode(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    new-instance v3, Landroid/view/Surface;

    iget-object v4, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-direct {v3, v4}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mSurfaceView:Landroid/view/SurfaceView;

    invoke-virtual {v3}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v3

    .line 9
    :goto_0
    iget-object v4, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getCameraSettings()Lcom/sec/android/app/camera/interfaces/CameraSettings;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraSettings;->isResizableMode()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 10
    iget-object v4, p0, Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;->mCameraContext:Lcom/sec/android/app/camera/interfaces/CameraContext;

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/CameraContext;->getPreviewManager()Lcom/sec/android/app/camera/interfaces/PreviewManager;

    move-result-object v4

    invoke-interface {v4}, Lcom/sec/android/app/camera/interfaces/PreviewManager;->getResizablePreviewOrientation()I

    move-result v4

    const/16 v5, 0x5a

    if-eq v4, v5, :cond_2

    const/16 v5, 0x10e

    if-ne v4, v5, :cond_3

    .line 11
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 12
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v2

    .line 13
    :cond_3
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v2, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 14
    new-instance v4, Lcom/sec/android/app/camera/preview/e;

    invoke-direct {v4, p0, v0}, Lcom/sec/android/app/camera/preview/e;-><init>(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Landroid/graphics/Bitmap;)V

    .line 15
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "takePreviewSurfaceSnapshot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "x"

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PreviewSurfaceManager"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    invoke-static {v3}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lcom/sec/android/app/camera/preview/i;

    invoke-direct {v2, p0, v0, v4}, Lcom/sec/android/app/camera/preview/i;-><init>(Lcom/sec/android/app/camera/preview/PreviewSurfaceManager;Landroid/graphics/Bitmap;Landroid/view/PixelCopy$OnPixelCopyFinishedListener;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method
