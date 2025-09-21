.class Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$RoundedDecoration;
.super Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;
.source "SceneOptimizerActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RoundedDecoration"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;


# direct methods
.method private constructor <init>(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$RoundedDecoration;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;Lcom/sec/android/app/camera/setting/l3;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$RoundedDecoration;-><init>(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)V

    return-void
.end method


# virtual methods
.method public seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;->seslOnDispatchDraw(Landroid/graphics/Canvas;Landroidx/recyclerview/widget/RecyclerView;Landroidx/recyclerview/widget/RecyclerView$State;)V

    .line 2
    invoke-virtual {p3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    move-result p2

    iget-object p3, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$RoundedDecoration;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {p3}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->k(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;

    move-result-object p3

    invoke-virtual {p3}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$ListAdapter;->getItemCount()I

    move-result p3

    if-ne p2, p3, :cond_0

    .line 3
    iget-object p0, p0, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity$RoundedDecoration;->this$0:Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;

    invoke-static {p0}, Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;->l(Lcom/sec/android/app/camera/setting/SceneOptimizerActivity;)Landroidx/appcompat/util/SeslRoundedCorner;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/appcompat/util/SeslRoundedCorner;->drawRoundedCorner(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method
