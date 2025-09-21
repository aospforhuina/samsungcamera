.class public Lcom/samsung/android/camera/core2/capability/ControlCapability;
.super Ljava/lang/Object;
.source "ControlCapability.java"


# instance fields
.field private A:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private B:Landroid/util/Rational;

.field private C:I

.field private D:Ljava/lang/Boolean;

.field private E:[I

.field private F:[I

.field private G:[I

.field private H:Ljava/lang/Boolean;

.field private I:Ljava/lang/Integer;

.field private J:Ljava/lang/Integer;

.field private K:Ljava/lang/Integer;

.field private L:[I

.field private M:[I

.field private N:[I

.field private O:[I

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

.field private c:[I

.field private d:[I

.field private e:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private f:[I

.field private g:[I

.field private h:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private j:[I

.field private k:[I

.field private l:Ljava/lang/Boolean;

.field private m:[I

.field private n:[F

.field private o:Ljava/lang/Integer;

.field private p:[I

.field private q:[F

.field private r:[I

.field private s:Ljava/lang/Boolean;

.field private t:[I

.field private u:Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;

.field private v:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;",
            ">;"
        }
    .end annotation
.end field

.field private w:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamCapabilityContainer$SsmCapability;",
            ">;"
        }
    .end annotation
.end field

.field private x:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private y:[I

.field private z:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/hardware/camera2/CameraCharacteristics;Ljava/util/Map;)V
    .locals 2
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
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->c:[I

    .line 3
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->d:[I

    .line 4
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->e:Landroid/util/Range;

    .line 5
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->f:[I

    .line 6
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->g:[I

    .line 7
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->h:Landroid/util/Range;

    .line 8
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->i:Ljava/util/List;

    .line 9
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->j:[I

    .line 10
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->k:[I

    .line 11
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->l:Ljava/lang/Boolean;

    .line 12
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->m:[I

    .line 13
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->n:[F

    .line 14
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->o:Ljava/lang/Integer;

    .line 15
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->p:[I

    .line 16
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->q:[F

    .line 17
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->r:[I

    .line 18
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->s:Ljava/lang/Boolean;

    .line 19
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->t:[I

    .line 20
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->u:Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;

    .line 21
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->v:Ljava/util/List;

    .line 22
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->w:Ljava/util/List;

    .line 23
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->x:Landroid/util/Range;

    .line 24
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->y:[I

    .line 25
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->z:Ljava/util/List;

    .line 26
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->A:Landroid/util/Range;

    .line 27
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->B:Landroid/util/Rational;

    const/high16 v1, -0x80000000

    .line 28
    iput v1, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->C:I

    .line 29
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->D:Ljava/lang/Boolean;

    .line 30
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->E:[I

    .line 31
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->F:[I

    .line 32
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->G:[I

    .line 33
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->H:Ljava/lang/Boolean;

    .line 34
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->I:Ljava/lang/Integer;

    .line 35
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->J:Ljava/lang/Integer;

    .line 36
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->K:Ljava/lang/Integer;

    .line 37
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->L:[I

    .line 38
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->M:[I

    .line 39
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->N:[I

    .line 40
    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->O:[I

    .line 41
    iput-object p1, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    .line 42
    iput-object p2, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->b:Ljava/util/Map;

    return-void
.end method

.method private static synthetic C(Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;)Z
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;->b()I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic a(Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;)Z
    .locals 0

    invoke-static {p0}, Lcom/samsung/android/camera/core2/capability/ControlCapability;->C(Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public A()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamCapabilityContainer$SsmCapability;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->w:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->z:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SsmCapability;->k([I)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 5
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->w:Ljava/util/List;

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->w:Ljava/util/List;

    .line 7
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->w:Ljava/util/List;

    return-object p0
.end method

.method public B()Landroid/util/Range;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->x:Landroid/util/Range;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->A:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->c(Ljava/lang/Object;Ljava/lang/Class;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->x:Landroid/util/Range;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->x:Landroid/util/Range;

    return-object p0
.end method

.method public b()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->L:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->L:[I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->L:[I

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->L:[I

    return-object p0
.end method

.method public c()Landroid/util/Rational;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->B:Landroid/util/Rational;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Rational;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->B:Landroid/util/Rational;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->B:Landroid/util/Rational;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Landroid/util/Rational;
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->b:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/camera2/CameraCharacteristics;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 2
    sget-object p0, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AE_COMPENSATION_STEP:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {p1, p0}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/util/Rational;

    return-object p0

    .line 3
    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/capability/ControlCapability;->c()Landroid/util/Rational;

    move-result-object p0

    return-object p0
.end method

.method public e()I
    .locals 2

    .line 1
    iget v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->C:I

    const/high16 v1, -0x80000000

    if-ne v1, v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/capability/ControlCapability;->c()Landroid/util/Rational;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/util/Rational;->getDenominator()I

    move-result v1

    invoke-virtual {v0}, Landroid/util/Rational;->getNumerator()I

    move-result v0

    div-int/2addr v1, v0

    iput v1, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->C:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->C:I

    .line 5
    :cond_1
    :goto_0
    iget p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->C:I

    return p0
.end method

.method public f()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->M:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->b:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->M:[I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_AF_AVAILABLE_MODES:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [I

    .line 4
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->M:[I

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->M:[I

    return-object p0
.end method

.method public g()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->I:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AE:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->I:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->I:Ljava/lang/Integer;

    return-object p0
.end method

.method public h()Ljava/lang/Integer;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->J:Ljava/lang/Integer;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Landroid/hardware/camera2/CameraCharacteristics;->CONTROL_MAX_REGIONS_AF:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-virtual {v0, v1}, Landroid/hardware/camera2/CameraCharacteristics;->get(Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->J:Ljava/lang/Integer;

    .line 3
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->J:Ljava/lang/Integer;

    return-object p0
.end method

.method public i()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->c:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->c:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->c:[I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->c:[I

    return-object p0
.end method

.method public j()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->d:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->d:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->d:[I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->d:[I

    return-object p0
.end method

.method public k()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->f:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->g:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->f:[I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->f:[I

    return-object p0
.end method

.method public l()Ljava/lang/Integer;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/capability/ControlCapability;->j()[I

    move-result-object p0

    .line 2
    array-length v0, p0

    if-lez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    aget p0, p0, v0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public m()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->g:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->k:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->g:[I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->g:[I

    return-object p0
.end method

.method public n()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->m:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    .line 3
    const-class v1, Ljava/lang/Integer;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->d(Ljava/lang/Object;Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->i:Ljava/util/List;

    if-nez v0, :cond_0

    .line 4
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->i:Ljava/util/List;

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->i:Ljava/util/List;

    return-object p0
.end method

.method public o()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->j:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->n:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->j:[I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->j:[I

    return-object p0
.end method

.method public p()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->k:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->o:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->k:[I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->k:[I

    return-object p0
.end method

.method public q()Ljava/lang/Boolean;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->l:Ljava/lang/Boolean;

    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/capability/ControlCapability;->r()[I

    move-result-object v0

    const/4 v1, 0x1

    .line 3
    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->b([II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x2

    .line 4
    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->b([II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x3

    .line 5
    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->b([II)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x4

    .line 6
    invoke-static {v0, v2}, Lcom/samsung/android/camera/core2/util/ArrayUtils;->b([II)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 7
    :cond_1
    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->l:Ljava/lang/Boolean;

    .line 8
    :cond_2
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->l:Ljava/lang/Boolean;

    return-object p0
.end method

.method public r()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->m:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->p:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->m:[I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->m:[I

    return-object p0
.end method

.method public s()[F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->n:[F

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->q:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->n:[F

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->n:[F

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        -0x3fc00000    # -3.0f
    .end array-data
.end method

.method public t()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->o:Ljava/lang/Integer;

    if-nez v0, :cond_1

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/capability/ControlCapability;->i()[I

    move-result-object v0

    .line 3
    array-length v1, v0

    if-lez v1, :cond_0

    .line 4
    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/OptionalInt;->getAsInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->o:Ljava/lang/Integer;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->o:Ljava/lang/Integer;

    .line 6
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->o:Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public u()[F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->q:[F

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->s:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [F

    fill-array-data v1, :array_0

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [F

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->q:[F

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->q:[F

    return-object p0

    nop

    :array_0
    .array-data 4
        0x0
        -0x40000000    # -2.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method public v()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->r:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->t:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->r:[I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->r:[I

    return-object p0
.end method

.method public w()Ljava/lang/Boolean;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->s:Ljava/lang/Boolean;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->u:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->s:Ljava/lang/Boolean;

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->s:Ljava/lang/Boolean;

    return-object p0
.end method

.method public x()[I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->t:[I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->w:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

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

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->t:[I

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->t:[I

    return-object p0
.end method

.method public y()Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->u:Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/samsung/android/camera/core2/capability/ControlCapability;->z()Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v1, Lq3/c;->a:Lq3/c;

    .line 4
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->u:Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->u:Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;

    return-object p0
.end method

.method public z()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->v:Ljava/util/List;

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->a:Landroid/hardware/camera2/CameraCharacteristics;

    sget-object v1, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->y:Landroid/hardware/camera2/CameraCharacteristics$Key;

    invoke-static {v0, v1}, Lcom/samsung/android/camera/core2/local/vendorkey/SemCameraCharacteristics;->a(Landroid/hardware/camera2/CameraCharacteristics;Landroid/hardware/camera2/CameraCharacteristics$Key;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [I

    if-eqz v0, :cond_0

    .line 3
    invoke-static {v0}, Lcom/samsung/android/camera/core2/CamCapabilityContainer$SpecialFunctionsFpsRange;->c([I)Ljava/util/List;

    move-result-object v0

    .line 4
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->v:Ljava/util/List;

    goto :goto_0

    .line 5
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->v:Ljava/util/List;

    .line 6
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/samsung/android/camera/core2/capability/ControlCapability;->v:Ljava/util/List;

    return-object p0
.end method
