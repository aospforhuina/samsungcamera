.class public final synthetic Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/z;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/z;->a:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/z;->b:Z

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/z;->a:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iget-boolean p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/z;->b:Z

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;

    invoke-static {v0, p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/intelligentui/IntelligentPresenter;->y(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;ZLcom/sec/android/app/camera/interfaces/CameraSettings$DimChangedListener;)V

    return-void
.end method
