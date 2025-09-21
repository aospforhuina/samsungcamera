.class public Lcom/samsung/android/camera/core2/capability/Capability;
.super Ljava/lang/Object;
.source "Capability.java"


# static fields
.field private static final w:Lcom/samsung/android/camera/core2/util/CLog$Tag;


# instance fields
.field private final a:Landroid/hardware/camera2/CameraCharacteristics;

.field private final b:Landroid/hardware/camera2/params/StreamConfigurationMap;

.field private c:Ljava/lang/Boolean;

.field private d:Ljava/lang/Integer;

.field private e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private f:[I

.field private g:[I

.field private h:Ljava/lang/Integer;

.field private i:Ljava/lang/Integer;

.field private j:Ljava/lang/Integer;

.field private k:Ljava/lang/Integer;

.field private l:Ljava/lang/Integer;

.field private m:Ljava/lang/Boolean;

.field private n:Ljava/lang/Integer;

.field private o:Ljava/lang/Byte;

.field private p:[B

.field private q:[B

.field private r:Ljava/lang/String;

.field private s:[Ljava/lang/String;

.field private t:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation
.end field

.field private u:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation
.end field

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/camera/core2/util/CLog$Tag;

    const-string v1, "Capability"

    invoke-direct {v0, v1}, Lcom/samsung/android/camera/core2/util/CLog$Tag;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/samsung/android/camera/core2/capability/Capability;->w:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    return-void
.end method

.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->c:Ljava/lang/Boolean;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->d:Ljava/lang/Integer;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->e:Ljava/util/List;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->f:[I

    .line 6
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->g:[I

    .line 7
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->h:Ljava/lang/Integer;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->i:Ljava/lang/Integer;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->j:Ljava/lang/Integer;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->k:Ljava/lang/Integer;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->l:Ljava/lang/Integer;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->m:Ljava/lang/Boolean;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->n:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->o:Ljava/lang/Byte;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->p:[B

    .line 16
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->q:[B

    .line 17
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->r:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->s:[Ljava/lang/String;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->t:Ljava/util/List;

    .line 20
    iput-object p1, p0, Lcom/samsung/android/camera/core2/capability/Capability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    .line 21
    sget-object v0, Landroid/hardware/camera2/CameraCharacteristics;->SCALER_STREAM_CONFIGURATION_MAP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, v0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/params/StreamConfigurationMap;

    iput-object p1, p0, Lcom/samsung/android/camera/core2/capability/Capability;->b:Landroid/hardware/camera2/params/StreamConfigurationMap;

    return-void
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/capability/Capability;Ljava/lang/Integer;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/capability/Capability;->n(Ljava/lang/Integer;)V

    return-void
.end method

.method public static synthetic b(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/capability/Capability;->m(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private d()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/hardware/camera2/CaptureRequest$Key<",
            "*>;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->u:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    invoke-static {v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->b(Landroid/hardware/camera2/CameraCharacteristics;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->u:Ljava/util/List;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 3
    sget-object v1, Lcom/samsung/android/camera/core2/capability/Capability;->w:Lcom/samsung/android/camera/core2/util/CLog$Tag;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAvailableSamsungSessionKeys err"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/camera/core2/util/CLog;->e(Lcom/samsung/android/camera/core2/util/CLog$Tag;Ljava/lang/String;)V

    .line 4
    :goto_0
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->u:Ljava/util/List;

    if-nez v0, :cond_0

    .line 5
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->u:Ljava/util/List;

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->u:Ljava/util/List;

    return-object p0
.end method

.method private static synthetic m(Landroid/hardware/camera2/params/StreamConfigurationMap;)[Landroid/util/Size;
    .locals 1

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/params/StreamConfigurationMap;->getOutputSizes(I)[Landroid/util/Size;

    move-result-object p0

    return-object p0
.end method

.method private synthetic n(Ljava/lang/Integer;)V
    .locals 1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/4 v0, 0x1

    if-le p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/camera/core2/capability/Capability;->m:Ljava/lang/Boolean;

    return-void
.end method


# virtual methods
.method public c()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->v:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-direct {p0}, Lcom/samsung/android/camera/core2/capability/Capability;->d()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/hardware/camera2/CaptureRequest$Key;

    .line 4
    invoke-virtual {v2}, Landroid/hardware/camera2/CaptureRequest$Key;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->v:Ljava/util/List;

    .line 6
    :cond_1
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->v:Ljava/util/List;

    return-object p0
.end method

.method public e()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->t:Ljava/util/List;

    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->D:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v2, Landroid/hardware/camera2/CameraCharacteristics;->JPEG_AVAILABLE_THUMBNAIL_SIZES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v2}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->t:Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->h([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->t:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->h([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->t:Ljava/util/List;

    .line 7
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->t:Ljava/util/List;

    return-object p0
.end method

.method public f()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Size;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->e:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->b:Landroid/hardware/camera2/params/StreamConfigurationMap;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lq3/b;->a:Lq3/b;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/util/Size;

    .line 4
    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/util/Size;

    .line 5
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->h([Landroid/util/Size;I)[Landroid/util/Size;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->e:Ljava/util/List;

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->e:Ljava/util/List;

    return-object p0
.end method

.method public g()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->f:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->n0:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->f:[I

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->f:[I

    return-object p0
.end method

.method public h()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->m:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->m:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/capability/Capability;->i()Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lq3/a;

    invoke-direct {v1, p0}, Lq3/a;-><init>(Lcom/samsung/android/camera/core2/capability/Capability;)V

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->m:Ljava/lang/Boolean;

    return-object p0
.end method

.method public i()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->n:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->REQUEST_PARTIAL_RESULT_COUNT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->n:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->n:Ljava/lang/Integer;

    return-object p0
.end method

.method public j()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->p:[B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->E:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->p:[B

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->p:[B

    return-object p0
.end method

.method public k()[B
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->q:[B

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->I:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->q:[B

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->q:[B

    return-object p0
.end method

.method public l()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->r:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->J:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->r:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/Capability;->r:Ljava/lang/String;

    return-object p0
.end method
