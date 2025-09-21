.class Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$1;
.super Ljava/lang/Object;
.source "MoreLinearListAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->lambda$onBindViewHolder$1(ILcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$ViewHolder;Lx5/e$b;Lo5/a3;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

.field final synthetic val$viewHolder:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$ViewHolder;)V
    .locals 0

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$1;->val$viewHolder:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$1;->this$0:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    new-instance v0, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragShadowBuilder;

    iget-object p0, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$1;->val$viewHolder:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter$ViewHolder;

    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-direct {v0, p0}, Lcom/sec/android/app/camera/shootingmode/more/dragdrop/MoreDragShadowBuilder;-><init>(Landroid/view/View;)V

    invoke-static {p2, v0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;->e(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;Landroid/view/View$DragShadowBuilder;Landroid/view/View;)V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method
