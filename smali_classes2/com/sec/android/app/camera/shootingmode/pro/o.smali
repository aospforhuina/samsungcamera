.class public final synthetic Lcom/sec/android/app/camera/shootingmode/pro/o;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoPresenter;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoPresenter;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/pro/o;->a:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoPresenter;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/pro/o;->a:Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoPresenter;

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    invoke-static {p0, p1}, Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoPresenter;->i(Lcom/sec/android/app/camera/shootingmode/pro/ProLiteVideoPresenter;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;)V

    return-void
.end method
