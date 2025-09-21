.class public final synthetic Lcom/sec/android/app/camera/shootingmode/feature/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/feature/ShootingModeFeatureProviderImpl$Builder;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/shootingmode/feature/a;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/feature/a;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/feature/a;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/feature/a;->a:Lcom/sec/android/app/camera/shootingmode/feature/a;

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

    new-instance p0, Lcom/sec/android/app/camera/shootingmode/feature/DualRecordingFeature;

    invoke-direct {p0}, Lcom/sec/android/app/camera/shootingmode/feature/DualRecordingFeature;-><init>()V

    return-object p0
.end method
