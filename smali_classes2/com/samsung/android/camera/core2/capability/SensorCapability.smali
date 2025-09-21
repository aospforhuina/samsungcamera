.class public Lcom/samsung/android/camera/core2/capability/SensorCapability;
.super Ljava/lang/Object;
.source "SensorCapability.java"


# instance fields
.field private final a:Landroid/hardware/camera2/CameraCharacteristics;

.field private final b:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/graphics/Rect;

.field private d:Landroid/graphics/Rect;

.field private e:Landroid/hardware/camera2/params/BlackLevelPattern;

.field private f:Landroid/hardware/camera2/params/BlackLevelPattern;

.field private g:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private h:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private i:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private j:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private k:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private l:Landroid/hardware/camera2/params/ColorSpaceTransform;

.field private m:Landroid/graphics/Rect;

.field private n:Ljava/lang/Integer;

.field private o:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private p:Ljava/lang/Long;

.field private q:Landroid/util/Size;

.field private r:Ljava/lang/Integer;

.field private s:Ljava/lang/Integer;

.field private t:Ljava/lang/Integer;

.field private u:Ljava/lang/Integer;

.field private v:Ljava/lang/Byte;

.field private w:[I

.field private x:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/hardware/camera2/CameraCharacteristics;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->c:Landroid/graphics/Rect;

    .line 3
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->d:Landroid/graphics/Rect;

    .line 4
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->e:Landroid/hardware/camera2/params/BlackLevelPattern;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->f:Landroid/hardware/camera2/params/BlackLevelPattern;

    .line 6
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->g:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 7
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->h:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->i:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->j:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 10
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->k:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 11
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->l:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->m:Landroid/graphics/Rect;

    .line 13
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->n:Ljava/lang/Integer;

    .line 14
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->o:Landroid/util/Range;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->p:Ljava/lang/Long;

    .line 16
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->q:Landroid/util/Size;

    .line 17
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->r:Ljava/lang/Integer;

    .line 18
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->s:Ljava/lang/Integer;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->t:Ljava/lang/Integer;

    .line 20
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->u:Ljava/lang/Integer;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->v:Ljava/lang/Byte;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->w:[I

    .line 23
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->x:Ljava/lang/Integer;

    .line 24
    iput-object p1, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    .line 25
    iput-object p2, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->b:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public a()Landroid/hardware/camera2/params/BlackLevelPattern;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->f:Landroid/hardware/camera2/params/BlackLevelPattern;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->p0:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/BlackLevelPattern;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->f:Landroid/hardware/camera2/params/BlackLevelPattern;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->f:Landroid/hardware/camera2/params/BlackLevelPattern;

    return-object p0
.end method

.method public b()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->c:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->q0:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->c:Landroid/graphics/Rect;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->c:Landroid/graphics/Rect;

    return-object p0
.end method

.method public c()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->r0:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, Ljava/lang/Long;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->c(Ljava/lang/Object;Ljava/lang/Class;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public d()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->d:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->t0:Landroid/hardware/camera2/CameraCharacteristics$Key;

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->d:Landroid/graphics/Rect;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->d:Landroid/graphics/Rect;

    return-object p0
.end method

.method public e()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v0, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->v0:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    const-class v0, Ljava/lang/Integer;

    invoke-static {p0, v0}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->c(Ljava/lang/Object;Ljava/lang/Class;)Landroid/util/Range;

    move-result-object p0

    return-object p0
.end method

.method public f()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->s:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->x0:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->s:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->s:Ljava/lang/Integer;

    return-object p0
.end method

.method public g()Landroid/hardware/camera2/params/BlackLevelPattern;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->e:Landroid/hardware/camera2/params/BlackLevelPattern;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_BLACK_LEVEL_PATTERN:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/BlackLevelPattern;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->e:Landroid/hardware/camera2/params/BlackLevelPattern;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->e:Landroid/hardware/camera2/params/BlackLevelPattern;

    return-object p0
.end method

.method public h()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->g:Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->g:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->g:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public i()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->h:Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_CALIBRATION_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->h:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->h:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public j()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->i:Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->i:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->i:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public k()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->j:Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_COLOR_TRANSFORM2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->j:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->j:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public l()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->k:Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_FORWARD_MATRIX1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->k:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->k:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public m()Landroid/hardware/camera2/params/ColorSpaceTransform;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->l:Landroid/hardware/camera2/params/ColorSpaceTransform;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_FORWARD_MATRIX2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/camera2/params/ColorSpaceTransform;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->l:Landroid/hardware/camera2/params/ColorSpaceTransform;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->l:Landroid/hardware/camera2/params/ColorSpaceTransform;

    return-object p0
.end method

.method public n()Landroid/graphics/Rect;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->m:Landroid/graphics/Rect;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_ACTIVE_ARRAY_SIZE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->m:Landroid/graphics/Rect;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->m:Landroid/graphics/Rect;

    return-object p0
.end method

.method public o()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->n:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->n:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->n:Ljava/lang/Integer;

    return-object p0
.end method

.method public p(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_COLOR_FILTER_ARRANGEMENT:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/capability/SensorCapability;->o()Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public q()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->o:Landroid/util/Range;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_EXPOSURE_TIME_RANGE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Range;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->o:Landroid/util/Range;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->o:Landroid/util/Range;

    return-object p0
.end method

.method public r()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->r:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_INFO_WHITE_LEVEL:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->r:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->r:Ljava/lang/Integer;

    return-object p0
.end method

.method public s()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->t:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_ORIENTATION:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->t:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->t:Ljava/lang/Integer;

    return-object p0
.end method

.method public t()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->u:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT1:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->u:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->u:Ljava/lang/Integer;

    return-object p0
.end method

.method public u()Ljava/lang/Byte;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->v:Ljava/lang/Byte;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->SENSOR_REFERENCE_ILLUMINANT2:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->v:Ljava/lang/Byte;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->v:Ljava/lang/Byte;

    return-object p0
.end method

.method public v()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->w:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->STATISTICS_INFO_AVAILABLE_FACE_DETECT_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->w:[I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/SensorCapability;->w:[I

    return-object p0
.end method
