.class public final synthetic Lcom/sec/android/app/camera/shootingmode/portrait/widget/l;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lo5/q6;

.field public final synthetic b:Landroidx/recyclerview/widget/RecyclerView$LayoutParams;


# direct methods
.method public synthetic constructor <init>(Lo5/q6;Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/l;->a:Lo5/q6;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/l;->a:Lo5/q6;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/portrait/widget/l;->b:Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    invoke-static {v0, p0}, Lcom/sec/android/app/camera/shootingmode/portrait/widget/BokehEffectListLayoutManager;->b(Lo5/q6;Landroidx/recyclerview/widget/RecyclerView$LayoutParams;)V

    return-void
.end method
