.class public final synthetic Lcom/sec/android/app/camera/shootingmode/more/linearlist/n;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic a:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

.field public final synthetic b:Lcom/sec/android/app/camera/interfaces/CommandId;

.field public final synthetic c:I


# direct methods
.method public synthetic constructor <init>(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;Lcom/sec/android/app/camera/interfaces/CommandId;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/n;->a:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    iput-object p2, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/n;->b:Lcom/sec/android/app/camera/interfaces/CommandId;

    iput p3, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/n;->c:I

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/n;->a:Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;

    iget-object v1, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/n;->b:Lcom/sec/android/app/camera/interfaces/CommandId;

    iget p0, p0, Lcom/sec/android/app/camera/shootingmode/more/linearlist/n;->c:I

    check-cast p1, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;

    invoke-static {v0, v1, p0, p1}, Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;->g(Lcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListView;Lcom/sec/android/app/camera/interfaces/CommandId;ILcom/sec/android/app/camera/shootingmode/more/linearlist/MoreLinearListAdapter;)V

    return-void
.end method
