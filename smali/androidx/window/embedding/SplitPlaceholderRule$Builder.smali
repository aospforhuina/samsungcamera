.class public final Landroidx/window/embedding/SplitPlaceholderRule$Builder;
.super Ljava/lang/Object;
.source "SplitPlaceholderRule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/SplitPlaceholderRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private final filters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/window/embedding/ActivityFilter;",
            ">;"
        }
    .end annotation
.end field

.field private finishPrimaryWithPlaceholder:I

.field private isSticky:Z

.field private layoutDir:I

.field private final minSmallestWidth:I

.field private final minWidth:I

.field private final placeholderIntent:Landroid/content/Intent;

.field private splitRatio:F


# direct methods
.method public constructor <init>(Ljava/util/Set;Landroid/content/Intent;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/ActivityFilter;",
            ">;",
            "Landroid/content/Intent;",
            "II)V"
        }
    .end annotation

    const-string v0, "filters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "placeholderIntent"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->filters:Ljava/util/Set;

    .line 3
    iput-object p2, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->placeholderIntent:Landroid/content/Intent;

    .line 4
    iput p3, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->minWidth:I

    .line 5
    iput p4, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->minSmallestWidth:I

    const/4 p1, 0x1

    .line 6
    iput p1, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->finishPrimaryWithPlaceholder:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 7
    iput p1, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->splitRatio:F

    const/4 p1, 0x3

    .line 8
    iput p1, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->layoutDir:I

    return-void
.end method

.method private static synthetic getFinishPrimaryWithPlaceholder$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLayoutDir$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/SplitPlaceholderRule;
    .locals 10

    .line 1
    new-instance v9, Landroidx/window/embedding/SplitPlaceholderRule;

    iget-object v1, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->filters:Ljava/util/Set;

    iget-object v2, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->placeholderIntent:Landroid/content/Intent;

    iget-boolean v3, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->isSticky:Z

    .line 2
    iget v4, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->finishPrimaryWithPlaceholder:I

    iget v5, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->minWidth:I

    iget v6, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->minSmallestWidth:I

    iget v7, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->splitRatio:F

    iget v8, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->layoutDir:I

    move-object v0, v9

    .line 3
    invoke-direct/range {v0 .. v8}, Landroidx/window/embedding/SplitPlaceholderRule;-><init>(Ljava/util/Set;Landroid/content/Intent;ZIIIFI)V

    return-object v9
.end method

.method public final setFinishPrimaryWithPlaceholder(I)Landroidx/window/embedding/SplitPlaceholderRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->finishPrimaryWithPlaceholder:I

    return-object p0
.end method

.method public final setLayoutDir(I)Landroidx/window/embedding/SplitPlaceholderRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->layoutDir:I

    return-object p0
.end method

.method public final setSplitRatio(F)Landroidx/window/embedding/SplitPlaceholderRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->splitRatio:F

    return-object p0
.end method

.method public final setSticky(Z)Landroidx/window/embedding/SplitPlaceholderRule$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/window/embedding/SplitPlaceholderRule$Builder;->isSticky:Z

    return-object p0
.end method
