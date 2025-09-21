.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/g;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

.field public final synthetic b:I

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;II)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/g;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    iput p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/g;->b:I

    iput p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/g;->c:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/g;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;

    iget v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/g;->b:I

    iget p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/g;->c:I

    invoke-static {v0, v1, p0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;->m(Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;II)V

    return-void
.end method
