.class public final synthetic Lcom/sec/android/app/camera/k1;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Lcom/sec/android/app/camera/interfaces/PreviewAnimationLayerManager$PreviewSnapshotEventListener;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/CommandReceiver;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/CommandReceiver;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/k1;->a:Lcom/sec/android/app/camera/CommandReceiver;

    return-void
.end method


# virtual methods
.method public final onPreviewSnapshotShow()V
    .locals 0

    iget-object p0, p0, Lcom/sec/android/app/camera/k1;->a:Lcom/sec/android/app/camera/CommandReceiver;

    invoke-static {p0}, Lcom/sec/android/app/camera/CommandReceiver;->l(Lcom/sec/android/app/camera/CommandReceiver;)V

    return-void
.end method
