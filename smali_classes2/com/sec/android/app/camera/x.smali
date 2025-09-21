.class public final synthetic Lcom/sec/android/app/camera/x;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/Camera;

.field public final synthetic b:Landroid/app/ActivityOptions;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/Camera;Landroid/app/ActivityOptions;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/x;->a:Lcom/sec/android/app/camera/Camera;

    iput-object p2, p0, Lcom/sec/android/app/camera/x;->b:Landroid/app/ActivityOptions;

    return-void
.end method


# virtual methods
.method public final onPreviewSnapshotShow()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/x;->a:Lcom/sec/android/app/camera/Camera;

    iget-object p0, p0, Lcom/sec/android/app/camera/x;->b:Landroid/app/ActivityOptions;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/Camera;->z(Lcom/sec/android/app/camera/Camera;Landroid/app/ActivityOptions;)V

    return-void
.end method
