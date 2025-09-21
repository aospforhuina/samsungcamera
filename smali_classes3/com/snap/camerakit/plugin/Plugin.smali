.class public abstract Lcom/snap/camerakit/plugin/Plugin;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/snap/camerakit/plugin/Plugin$Companion;,
        Lcom/snap/camerakit/plugin/Plugin$Loader;
    }
.end annotation


# static fields
.field protected static final Companion:Lcom/snap/camerakit/plugin/Plugin$Companion;

.field public static final DEFAULT_HORIZONTAL_FIELD_OF_VIEW_DEGREES:F = 42.0f

.field public static final DEFAULT_IMAGE_PROCESSING_TIMEOUT_SECONDS:J = 0xaL

.field public static final DEFAULT_VERTICAL_FIELD_OF_VIEW_DEGREES:F = 59.0f


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/snap/camerakit/plugin/Plugin$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/snap/camerakit/plugin/Plugin$Companion;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Lcom/snap/camerakit/plugin/Plugin;->Companion:Lcom/snap/camerakit/plugin/Plugin$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(F)Ljava/lang/Float;
    .locals 0

    invoke-static {p0}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorInputFrom$lambda-1(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(F)Ljava/lang/Float;
    .locals 0

    invoke-static {p0}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorInputFrom$lambda-0(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static final imageProcessorInputFrom$lambda-0(F)Ljava/lang/Float;
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method

.method private static final imageProcessorInputFrom$lambda-1(F)Ljava/lang/Float;
    .locals 0

    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method protected abstract attach(Landroid/content/Context;)Lcom/snap/camerakit/plugin/Plugin;
.end method

.method public abstract audioProcessorInputFrameFrom([BI)Lcom/snap/camerakit/AudioProcessor$Input$Frame;
.end method

.method public abstract audioProcessorMicrophoneSourceFor(Ljava/util/concurrent/ExecutorService;)Lcom/snap/camerakit/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/snap/camerakit/Source<",
            "Lcom/snap/camerakit/AudioProcessor;",
            ">;"
        }
    .end annotation
.end method

.method public final imageProcessorConnectInput(Lcom/snap/camerakit/ImageProcessor;Ljava/io/File;)Ljava/io/Closeable;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Ljava/io/File;",
            ")",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const/high16 v3, -0x80000000

    const/4 v4, 0x1

    const/high16 v5, 0x426c0000    # 59.0f

    const/high16 v6, 0x42280000    # 42.0f

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-virtual/range {v0 .. v6}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorConnectInput(Lcom/snap/camerakit/ImageProcessor;Ljava/io/File;IZFF)Ljava/io/Closeable;

    move-result-object p0

    return-object p0
.end method

.method public abstract imageProcessorConnectInput(Lcom/snap/camerakit/ImageProcessor;Ljava/io/File;IZFF)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Ljava/io/File;",
            "IZFF)",
            "Ljava/io/Closeable;"
        }
    .end annotation
.end method

.method public abstract imageProcessorConnectOutput(Lcom/snap/camerakit/ImageProcessor;Landroid/view/TextureView;)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Landroid/view/TextureView;",
            ")",
            "Ljava/io/Closeable;"
        }
    .end annotation
.end method

.method public final imageProcessorConnectOutput(Lcom/snap/camerakit/ImageProcessor;Ljava/io/File;II)Ljava/io/Closeable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Ljava/io/File;",
            "II)",
            "Ljava/io/Closeable;"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorConnectOutput(Lcom/snap/camerakit/ImageProcessor;Ljava/io/File;IIZ)Ljava/io/Closeable;

    move-result-object p0

    return-object p0
.end method

.method public abstract imageProcessorConnectOutput(Lcom/snap/camerakit/ImageProcessor;Ljava/io/File;IIZ)Ljava/io/Closeable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Ljava/io/File;",
            "IIZ)",
            "Ljava/io/Closeable;"
        }
    .end annotation
.end method

.method public final imageProcessorInputFrom(Landroid/graphics/SurfaceTexture;IIIZFF)Lcom/snap/camerakit/ImageProcessor$Input;
    .locals 8

    new-instance v6, Lcom/snap/camerakit/plugin/b;

    invoke-direct {v6, p6}, Lcom/snap/camerakit/plugin/b;-><init>(F)V

    new-instance v7, Lcom/snap/camerakit/plugin/a;

    invoke-direct {v7, p7}, Lcom/snap/camerakit/plugin/a;-><init>(F)V

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v7}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorInputFrom(Landroid/graphics/SurfaceTexture;IIIZLjava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)Lcom/snap/camerakit/ImageProcessor$Input;

    move-result-object p0

    return-object p0
.end method

.method public abstract imageProcessorInputFrom(Landroid/graphics/SurfaceTexture;IIIZLjava/util/concurrent/Callable;Ljava/util/concurrent/Callable;)Lcom/snap/camerakit/ImageProcessor$Input;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/SurfaceTexture;",
            "IIIZ",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/concurrent/Callable<",
            "Ljava/lang/Float;",
            ">;)",
            "Lcom/snap/camerakit/ImageProcessor$Input;"
        }
    .end annotation
.end method

.method public final imageProcessorOutputFrom(Landroid/graphics/SurfaceTexture;Lcom/snap/camerakit/ImageProcessor$Output$Purpose;)Lcom/snap/camerakit/ImageProcessor$Output;
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, p2, v0}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorOutputFrom(Landroid/graphics/SurfaceTexture;Lcom/snap/camerakit/ImageProcessor$Output$Purpose;I)Lcom/snap/camerakit/ImageProcessor$Output;

    move-result-object p0

    return-object p0
.end method

.method public abstract imageProcessorOutputFrom(Landroid/graphics/SurfaceTexture;Lcom/snap/camerakit/ImageProcessor$Output$Purpose;I)Lcom/snap/camerakit/ImageProcessor$Output;
.end method

.method public final imageProcessorOutputFrom(Landroid/view/Surface;Lcom/snap/camerakit/ImageProcessor$Output$Purpose;)Lcom/snap/camerakit/ImageProcessor$Output;
    .locals 1

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, p2, v0}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorOutputFrom(Landroid/view/Surface;Lcom/snap/camerakit/ImageProcessor$Output$Purpose;I)Lcom/snap/camerakit/ImageProcessor$Output;

    move-result-object p0

    return-object p0
.end method

.method public abstract imageProcessorOutputFrom(Landroid/view/Surface;Lcom/snap/camerakit/ImageProcessor$Output$Purpose;I)Lcom/snap/camerakit/ImageProcessor$Output;
.end method

.method public final imageProcessorProcessBitmap(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Lcom/snap/camerakit/ImageProcessor$Input;",
            "Landroid/graphics/Bitmap;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorProcessBitmap(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/graphics/Bitmap;JLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final imageProcessorProcessBitmap(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Lcom/snap/camerakit/ImageProcessor$Input;",
            "Landroid/graphics/Bitmap;",
            "I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorProcessBitmap(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/graphics/Bitmap;IJLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public abstract imageProcessorProcessBitmap(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/graphics/Bitmap;IJLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Lcom/snap/camerakit/ImageProcessor$Input;",
            "Landroid/graphics/Bitmap;",
            "IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public abstract imageProcessorProcessBitmap(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/graphics/Bitmap;JLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Lcom/snap/camerakit/ImageProcessor$Input;",
            "Landroid/graphics/Bitmap;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public abstract imageProcessorProcessBitmap(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/graphics/Bitmap;ZZIJLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Lcom/snap/camerakit/ImageProcessor$Input;",
            "Landroid/graphics/Bitmap;",
            "ZZIJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public final imageProcessorProcessImage(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/media/Image;)Landroid/graphics/Bitmap;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Lcom/snap/camerakit/ImageProcessor$Input;",
            "Landroid/media/Image;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-virtual/range {v0 .. v6}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorProcessImage(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/media/Image;JLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public final imageProcessorProcessImage(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/media/Image;I)Landroid/graphics/Bitmap;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Lcom/snap/camerakit/ImageProcessor$Input;",
            "Landroid/media/Image;",
            "I)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v5, 0xa

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v7}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorProcessImage(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/media/Image;IJLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public abstract imageProcessorProcessImage(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/media/Image;IJLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Lcom/snap/camerakit/ImageProcessor$Input;",
            "Landroid/media/Image;",
            "IJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public abstract imageProcessorProcessImage(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/media/Image;JLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Lcom/snap/camerakit/ImageProcessor$Input;",
            "Landroid/media/Image;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public abstract imageProcessorProcessImage(Lcom/snap/camerakit/ImageProcessor;Lcom/snap/camerakit/ImageProcessor$Input;Landroid/media/Image;ZZIJLjava/util/concurrent/TimeUnit;)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;",
            "Lcom/snap/camerakit/ImageProcessor$Input;",
            "Landroid/media/Image;",
            "ZZIJ",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public final imageProcessorSourceFrom(Ljava/io/File;)Lcom/snap/camerakit/Source;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Lcom/snap/camerakit/Source<",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">;"
        }
    .end annotation

    const/high16 v2, -0x80000000

    const/4 v3, 0x1

    const/high16 v4, 0x426c0000    # 59.0f

    const/high16 v5, 0x42280000    # 42.0f

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorSourceFrom(Ljava/io/File;IZFF)Lcom/snap/camerakit/Source;

    move-result-object p0

    return-object p0
.end method

.method public abstract imageProcessorSourceFrom(Ljava/io/File;IZFF)Lcom/snap/camerakit/Source;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "IZFF)",
            "Lcom/snap/camerakit/Source<",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">;"
        }
    .end annotation
.end method

.method public final imageProcessorToBitmap(Lcom/snap/camerakit/ImageProcessor;II)Landroid/graphics/Bitmap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;II)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation

    const/high16 v0, -0x80000000

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/snap/camerakit/plugin/Plugin;->imageProcessorToBitmap(Lcom/snap/camerakit/ImageProcessor;III)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public abstract imageProcessorToBitmap(Lcom/snap/camerakit/ImageProcessor;III)Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P::",
            "Lcom/snap/camerakit/ImageProcessor;",
            ">(TP;III)",
            "Landroid/graphics/Bitmap;"
        }
    .end annotation
.end method

.method public abstract newLensLaunchDataBuilder()Lcom/snap/camerakit/lenses/LensesComponent$Lens$LaunchData$Builder;
.end method

.method public abstract newSessionBuilder()Lcom/snap/camerakit/Session$Builder;
.end method

.method protected abstract supported()Z
.end method

.method public abstract version()Lcom/snap/camerakit/Version;
.end method
