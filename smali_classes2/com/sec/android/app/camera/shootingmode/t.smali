.class public final synthetic Lcom/sec/android/app/camera/shootingmode/t;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$Builder;


# static fields
.field public static final synthetic a:Lcom/sec/android/app/camera/shootingmode/t;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/t;

    invoke-direct {v0}, Lcom/sec/android/app/camera/shootingmode/t;-><init>()V

    sput-object v0, Lcom/sec/android/app/camera/shootingmode/t;->a:Lcom/sec/android/app/camera/shootingmode/t;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final build(Lcom/sec/android/app/camera/interfaces/CameraContext;I)Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$ShootingMode;
    .locals 0

    invoke-static {p1, p2}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$1;->i(Lcom/sec/android/app/camera/interfaces/CameraContext;I)Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$ShootingMode;

    move-result-object p0

    return-object p0
.end method
