.class public final synthetic Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/m;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomTickSlider;

.field public final synthetic b:Z

.field public final synthetic c:Ljava/lang/Integer;

.field public final synthetic d:Landroid/util/SparseIntArray;


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomTickSlider;ZLjava/lang/Integer;Landroid/util/SparseIntArray;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/m;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomTickSlider;

    iput-boolean p2, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/m;->b:Z

    iput-object p3, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/m;->c:Ljava/lang/Integer;

    iput-object p4, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/m;->d:Landroid/util/SparseIntArray;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 3

    iget-object v0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/m;->a:Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomTickSlider;

    iget-boolean v1, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/m;->b:Z

    iget-object v2, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/m;->c:Ljava/lang/Integer;

    iget-object p0, p0, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/m;->d:Landroid/util/SparseIntArray;

    check-cast p1, Ljava/lang/Integer;

    invoke-static {v0, v1, v2, p0, p1}, Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomTickSlider;->c(Lcom/sec/android/app/camera/layer/keyscreen/zoom/widget/ZoomTickSlider;ZLjava/lang/Integer;Landroid/util/SparseIntArray;Ljava/lang/Integer;)V

    return-void
.end method
