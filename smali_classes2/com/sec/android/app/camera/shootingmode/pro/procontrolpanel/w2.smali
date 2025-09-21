.class public final synthetic Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/w2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/w2;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/w2;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/w2;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/w2;->a:Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/w2;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {p1}, Lcom/sec/android/app/camera/shootingmode/pro/procontrolpanel/ProControlPanelPresenter;->M(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)Z

    move-result p0

    return p0
.end method
