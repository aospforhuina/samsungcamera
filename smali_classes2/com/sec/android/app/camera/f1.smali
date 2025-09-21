.class public final synthetic Lcom/sec/android/app/camera/f1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/CommandReceiver;

.field public final synthetic b:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/CommandReceiver;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/f1;->a:Lcom/sec/android/app/camera/CommandReceiver;

    iput-object p2, p0, Lcom/sec/android/app/camera/f1;->b:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iput p3, p0, Lcom/sec/android/app/camera/f1;->c:I

    return-void
.end method


# virtual methods
.method public final onPreviewSnapshotShow()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/f1;->a:Lcom/sec/android/app/camera/CommandReceiver;

    iget-object v1, p0, Lcom/sec/android/app/camera/f1;->b:Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;

    iget p0, p0, Lcom/sec/android/app/camera/f1;->c:I

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/CommandReceiver;->c(Lcom/sec/android/app/camera/CommandReceiver;Lcom/sec/android/app/camera/interfaces/CameraSettings$Key;I)V

    return-void
.end method
