.class public final synthetic Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/j;->a:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentPresenter;

    return-void
.end method


# virtual methods
.method public final onDimChanged(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Z)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/j;->a:Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentPresenter;

    invoke-static {p0, p1, p2}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentPresenter;->o(Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentPresenter;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Z)V

    return-void
.end method
