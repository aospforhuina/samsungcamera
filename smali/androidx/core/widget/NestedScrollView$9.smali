.class Landroidx/core/widget/NestedScrollView$9;
.super Ljava/lang/Object;
.source "NestedScrollView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/core/widget/NestedScrollView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/core/widget/NestedScrollView;


# direct methods
.method constructor <init>(Landroidx/core/widget/NestedScrollView;)V
    .locals 0

    iput-object p1, p0, Landroidx/core/widget/NestedScrollView$9;->this$0:Landroidx/core/widget/NestedScrollView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/core/widget/NestedScrollView$9;->this$0:Landroidx/core/widget/NestedScrollView;

    iget-object v0, v0, Landroidx/core/widget/NestedScrollView;->mEdgeGlowTop:Landroid/widget/EdgeEffect;

    const/16 v1, 0x2710

    invoke-virtual {v0, v1}, Landroid/widget/EdgeEffect;->onAbsorb(I)V

    .line 2
    iget-object p0, p0, Landroidx/core/widget/NestedScrollView$9;->this$0:Landroidx/core/widget/NestedScrollView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->invalidate()V

    return-void
.end method
