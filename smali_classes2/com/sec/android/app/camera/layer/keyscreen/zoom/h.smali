.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/h;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

.field public final synthetic b:I

.field public final synthetic c:Z


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;IZ)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/h;->b:I

    iput-boolean p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/h;->c:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/h;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    iget v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/h;->b:I

    iget-boolean p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/h;->c:Z

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;->u(Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;IZ)V

    return-void
.end method
