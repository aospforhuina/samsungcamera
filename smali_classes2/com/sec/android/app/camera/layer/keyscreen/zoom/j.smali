.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/j;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/function/Consumer;

.field public final synthetic b:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Ljava/util/function/Consumer;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/j;->a:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/j;->b:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/j;->a:Ljava/util/function/Consumer;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/j;->b:Landroid/view/View;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/ZoomView;->x(Ljava/util/function/Consumer;Landroid/view/View;)V

    return-void
.end method
