.class final Landroidx/window/embedding/EmbeddingAdapter$translateParentMetricsPredicate$1;
.super Lkotlin/jvm/internal/m;
.source "EmbeddingAdapter.kt"

# interfaces
.implements Lu6/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/window/embedding/EmbeddingAdapter;->translateParentMetricsPredicate(Landroidx/window/embedding/SplitRule;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/m;",
        "Lu6/l<",
        "Landroid/view/WindowMetrics;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $splitRule:Landroidx/window/embedding/SplitRule;


# direct methods
.method constructor <init>(Landroidx/window/embedding/SplitRule;)V
    .locals 0

    iput-object p1, p0, Landroidx/window/embedding/EmbeddingAdapter$translateParentMetricsPredicate$1;->$splitRule:Landroidx/window/embedding/SplitRule;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroid/view/WindowMetrics;)Ljava/lang/Boolean;
    .locals 1

    const-string v0, "windowMetrics"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object p0, p0, Landroidx/window/embedding/EmbeddingAdapter$translateParentMetricsPredicate$1;->$splitRule:Landroidx/window/embedding/SplitRule;

    invoke-virtual {p0, p1}, Landroidx/window/embedding/SplitRule;->checkParentMetrics$window_release(Landroid/view/WindowMetrics;)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Landroid/view/WindowMetrics;

    invoke-virtual {p0, p1}, Landroidx/window/embedding/EmbeddingAdapter$translateParentMetricsPredicate$1;->invoke(Landroid/view/WindowMetrics;)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0
.end method
