.class public final synthetic Lcom/sec/android/app/camera/shootingmode/night/s;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/night/NightView;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/night/s;->a:Lcom/sec/android/app/camera/shootingmode/night/NightView;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/night/s;->a:Lcom/sec/android/app/camera/shootingmode/night/NightView;

    invoke-static {p0}, Lcom/sec/android/app/camera/shootingmode/night/NightView;->h(Lcom/sec/android/app/camera/shootingmode/night/NightView;)V

    return-void
.end method
