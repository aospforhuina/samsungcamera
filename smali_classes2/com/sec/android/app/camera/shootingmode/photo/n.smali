.class public final synthetic Lcom/sec/android/app/camera/shootingmode/photo/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/photo/n;->a:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iput p2, p0, Lcom/sec/android/app/camera/shootingmode/photo/n;->b:I

    iput p3, p0, Lcom/sec/android/app/camera/shootingmode/photo/n;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/photo/n;->a:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iget v1, p0, Lcom/sec/android/app/camera/shootingmode/photo/n;->b:I

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/photo/n;->c:I

    check-cast p1, Lcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/photo/PhotoPresenter;->v(Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;IILcom/sec/android/app/camera/interfaces/CameraSettings$CameraSettingChangedListener;)V

    return-void
.end method
