.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomTickSlider;

.field public final synthetic b:Ljava/util/Map;

.field public final synthetic c:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final synthetic d:Z

.field public final synthetic e:Landroid/util/SparseIntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomTickSlider;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;ZLandroid/util/SparseIntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/l;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomTickSlider;

    iput-object p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/l;->b:Ljava/util/Map;

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/l;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iput-boolean p4, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/l;->d:Z

    iput-object p5, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/l;->e:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/l;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomTickSlider;

    iget-object v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/l;->b:Ljava/util/Map;

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/l;->c:Ljava/util/concurrent/atomic/AtomicInteger;

    iget-boolean v3, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/l;->d:Z

    iget-object v4, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/l;->e:Landroid/util/SparseIntArray;

    move-object v5, p1

    check-cast v5, Ljava/lang/Integer;

    invoke-static/range {v0 .. v5}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomTickSlider;->b(Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomTickSlider;Ljava/util/Map;Ljava/util/concurrent/atomic/AtomicInteger;ZLandroid/util/SparseIntArray;Ljava/lang/Integer;)V

    return-void
.end method
