.class public final synthetic Lcom/sec/android/app/camera/shootingmode/a;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$Builder;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$1;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/a;->a:Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$1;

    return-void
.end method


# virtual methods
.method public final build(Lcom/sec/android/app/camera/interfaces/CameraContext;I)Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$ShootingMode;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/a;->a:Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$1;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$1;->n(Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$1;Lcom/sec/android/app/camera/interfaces/CameraContext;I)Lcom/sec/android/app/camera/shootingmode/ShootingModeProviderImpl$ShootingMode;

    move-result-object p0

    return-object p0
.end method
