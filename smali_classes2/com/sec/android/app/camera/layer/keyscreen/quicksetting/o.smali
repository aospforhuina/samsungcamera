.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/QuickSettingPresenter$ResolutionListGetter;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/o;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/o;

    invoke-direct {v0}, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/o;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/o;->a:Lcom/sec/android/app/camera/layer/keyscreen/quicksetting/o;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final get(Lcom/sec/android/app/camera/interfaces/AspectRatio;)[Lcom/sec/android/app/camera/interfaces/Resolution;
    .locals 0

    invoke-static {p1}, Lcom/sec/android/app/camera/util/CameraResolution;->getSelectableFrontFunVideoResolutionList(Lcom/sec/android/app/camera/interfaces/AspectRatio;)[Lcom/sec/android/app/camera/interfaces/Resolution;

    move-result-object p0

    return-object p0
.end method
