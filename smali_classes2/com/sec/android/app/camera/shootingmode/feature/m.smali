.class public final synthetic Lcom/sec/android/app/camera/shootingmode/feature/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/shootingmode/feature/m;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/m;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/m;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/feature/m;->a:Lcom/sec/android/app/camera/shootingmode/feature/m;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build()Lcom/sec/android/app/camera/interfaces/ShootingModeFeature;
    .locals 0

    new-instance p0, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/feature/SlowMotionFeature;-><init>()V

    return-object p0
.end method
