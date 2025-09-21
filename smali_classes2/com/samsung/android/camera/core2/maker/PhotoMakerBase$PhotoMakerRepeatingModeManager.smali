.class public Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;
.super Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;
.source "PhotoMakerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/camera/core2/maker/PhotoMakerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PhotoMakerRepeatingModeManager"
.end annotation


# static fields
.field protected static final A:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final B:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final C:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final D:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final m:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final n:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final o:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final p:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final q:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final r:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final s:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final t:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final u:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final v:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final w:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final x:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final y:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final z:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;->b:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v2, "RELIGHT_BEAUTY"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->m:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 2
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "QR_CODE_DETECTION"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->n:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 3
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "SW_FACE_DETECTION"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->o:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 4
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "PALM_DETECTION"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->p:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 5
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "SMART_FILTER"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->q:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 6
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "FACE_ALIGNMENT"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->r:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 7
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "FOOD_MAKER"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->s:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 8
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "STITCHING_MAKER"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->t:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 9
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "FACIAL_ATTRIBUTE"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->u:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 10
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "SCENE_DETECTION"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->v:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 11
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "COMPOSITION_GUIDE"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->w:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 12
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "HUMAN_TRACKING"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->x:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 13
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "LABS_CAPTURE_MODE"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->y:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 14
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "EVENT_DRIVEN"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->z:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 15
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "FACE_LANDMARK"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->A:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 16
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    const-string v2, "FR_TRACKING"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->B:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 17
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;->c:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v2, "LIVE_BEAUTY"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->C:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    .line 18
    new-instance v0, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;->d:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v2, "COMPOSITION_GUIDE_WIDE_FOV"

    invoke-direct {v0, v2, v1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(Ljava/lang/String;Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/camera/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->D:Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/camera/core2/util/CLog$Tag;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/camera/core2/maker/MakerRepeatingModeManager;-><init>(Lcom/samsung/android/camera/core2/util/CLog$Tag;)V

    return-void
.end method
