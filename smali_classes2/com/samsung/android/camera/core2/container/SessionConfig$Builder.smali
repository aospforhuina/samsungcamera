.class public Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;
.super Ljava/lang/Object;
.source "SessionConfig.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/container/SessionConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final a:Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;

.field private final b:Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;

.field private final c:Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter;

.field private final d:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

.field private e:Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;

.field private f:Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

.field private g:Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

.field private h:Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

.field private i:Lcom/samsung/android/camera/core2/container/SessionConfig$DepthCbConfigCollector;

.field private j:Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;


# direct methods
.method public constructor <init>(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter;Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    const-string/jumbo v0, "surfaceConfigCollector"

    .line 2
    invoke-static {p1, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "builderConfig"

    .line 3
    invoke-static {p2, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "cameraParameter"

    .line 4
    invoke-static {p3, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    const-string v0, "callback"

    .line 5
    invoke-static {p4, v0}, Lcom/samsung/android/camera/core2/util/ConditionChecker;->m(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 6
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->b(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfig;->c()Landroid/view/Surface;

    move-result-object v0

    .line 7
    invoke-static {p1}, Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;->b(Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewSurfaceConfig;->e()Landroid/util/Size;

    move-result-object v1

    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 8
    invoke-static {v0}, Lcom/samsung/android/camera/core2/util/NativeUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v0

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance p0, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->s:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;)V

    throw p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->a:Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;

    .line 11
    iput-object p2, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->b:Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;

    .line 12
    iput-object p3, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->c:Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter;

    .line 13
    iput-object p4, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->d:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    return-void

    :catch_0
    move-exception p0

    .line 14
    invoke-static {}, Lcom/samsung/android/camera/core2/container/SessionConfig;->a()Lcom/samsung/android/camera/core2/util/CLog$Tag;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "SessionConfig\'s Builder Constructor is failed : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 15
    new-instance p1, Lcom/samsung/android/camera/core2/exception/CamDeviceException;

    sget-object p2, Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;->s:Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;

    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p2, p0}, Lcom/samsung/android/camera/core2/exception/CamDeviceException;-><init>(Lcom/samsung/android/camera/core2/exception/CamDeviceException$Type;Ljava/lang/String;)V

    throw p1
.end method

.method static bridge synthetic a(Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;)Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->b:Lcom/samsung/android/camera/core2/container/SessionConfig$BuilderConfig;

    return-object p0
.end method

.method static bridge synthetic b(Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;)Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->d:Lcom/samsung/android/camera/core2/CamDevice$SessionStateCallback;

    return-object p0
.end method

.method static bridge synthetic c(Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;)Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->c:Lcom/samsung/android/camera/core2/local/parameter/SemCameraParameter;

    return-object p0
.end method

.method static bridge synthetic d(Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;)Lcom/samsung/android/camera/core2/container/SessionConfig$DepthCbConfigCollector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->i:Lcom/samsung/android/camera/core2/container/SessionConfig$DepthCbConfigCollector;

    return-object p0
.end method

.method static bridge synthetic e(Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;)Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->f:Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

    return-object p0
.end method

.method static bridge synthetic f(Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;)Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->e:Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;

    return-object p0
.end method

.method static bridge synthetic g(Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;)Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->g:Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

    return-object p0
.end method

.method static bridge synthetic h(Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;)Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->a:Lcom/samsung/android/camera/core2/container/SessionConfig$SurfaceConfigCollector;

    return-object p0
.end method

.method static bridge synthetic i(Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;)Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->h:Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

    return-object p0
.end method

.method static bridge synthetic j(Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;)Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->j:Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method


# virtual methods
.method public k()Lcom/samsung/android/camera/core2/container/SessionConfig;
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/container/SessionConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/camera/core2/container/SessionConfig;-><init>(Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;Lcom/samsung/android/camera/core2/container/k1;)V

    return-object v0
.end method

.method public l(Lcom/samsung/android/camera/core2/container/SessionConfig$DepthCbConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->i:Lcom/samsung/android/camera/core2/container/SessionConfig$DepthCbConfigCollector;

    return-object p0
.end method

.method public m(Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->f:Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

    return-object p0
.end method

.method public n(Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->e:Lcom/samsung/android/camera/core2/container/SessionConfig$PreviewCbConfigCollector;

    return-object p0
.end method

.method public o(Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->g:Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

    return-object p0
.end method

.method public p(Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;)Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->h:Lcom/samsung/android/camera/core2/container/SessionConfig$PicCbConfigCollector;

    return-object p0
.end method

.method public q(Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;)Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/camera/core2/container/SessionConfig$Builder;->j:Lcom/samsung/android/camera/core2/container/SessionConfig$ImageCbConfig;

    return-object p0
.end method
