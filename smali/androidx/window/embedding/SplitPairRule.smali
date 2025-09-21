.class public final Landroidx/window/embedding/SplitPairRule;
.super Landroidx/window/embedding/SplitRule;
.source "SplitPairRule.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/window/embedding/SplitPairRule$Builder;
    }
.end annotation


# instance fields
.field private final clearTop:Z

.field private final filters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final finishPrimaryWithSecondary:I

.field private final finishSecondaryWithPrimary:I


# direct methods
.method public constructor <init>(Ljava/util/Set;IIZIIFI)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;IIZIIFI)V"
        }
    .end annotation

    const-string v0, "filters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p5, p6, p7, p8}, Landroidx/window/embedding/SplitRule;-><init>(IIFI)V

    const-string p8, "minWidth must be non-negative"

    .line 3
    invoke-static {p5, p8}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    const-string p5, "minSmallestWidth must be non-negative"

    .line 4
    invoke-static {p6, p5}, Landroidx/core/util/Preconditions;->checkArgumentNonnegative(ILjava/lang/String;)I

    float-to-double p5, p7

    const-wide/16 p7, 0x0

    cmpg-double p7, p7, p5

    const/4 p8, 0x0

    if-gtz p7, :cond_0

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    cmpg-double p5, p5, v0

    if-gtz p5, :cond_0

    const/4 p5, 0x1

    goto :goto_0

    :cond_0
    move p5, p8

    :goto_0
    new-array p6, p8, [Ljava/lang/Object;

    const-string p7, "splitRatio must be in 0.0..1.0 range"

    .line 5
    invoke-static {p5, p7, p6}, Landroidx/core/util/Preconditions;->checkArgument(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 6
    invoke-static {p1}, Ll6/q;->K(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    .line 7
    iput-boolean p4, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    .line 8
    iput p2, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    .line 9
    iput p3, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Set;IIZIIFIILkotlin/jvm/internal/g;)V
    .locals 12

    move/from16 v0, p9

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move v5, v2

    goto :goto_0

    :cond_0
    move v5, p2

    :goto_0
    and-int/lit8 v1, v0, 0x4

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v6, v1

    goto :goto_1

    :cond_1
    move v6, p3

    :goto_1
    and-int/lit8 v1, v0, 0x8

    if-eqz v1, :cond_2

    move v7, v2

    goto :goto_2

    :cond_2
    move/from16 v7, p4

    :goto_2
    and-int/lit8 v1, v0, 0x40

    if-eqz v1, :cond_3

    const/high16 v1, 0x3f000000    # 0.5f

    move v10, v1

    goto :goto_3

    :cond_3
    move/from16 v10, p7

    :goto_3
    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    move v11, v0

    goto :goto_4

    :cond_4
    move/from16 v11, p8

    :goto_4
    move-object v3, p0

    move-object v4, p1

    move/from16 v8, p5

    move/from16 v9, p6

    .line 1
    invoke-direct/range {v3 .. v11}, Landroidx/window/embedding/SplitPairRule;-><init>(Ljava/util/Set;IIZIIFI)V

    return-void
.end method

.method public static synthetic getFinishPrimaryWithSecondary$annotations()V
    .locals 0

    return-void
.end method

.method public static synthetic getFinishSecondaryWithPrimary$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/SplitPairRule;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    invoke-super {p0, p1}, Landroidx/window/embedding/SplitRule;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 3
    :cond_2
    iget-object v1, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    check-cast p1, Landroidx/window/embedding/SplitPairRule;

    iget-object v3, p1, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    invoke-static {v1, v3}, Lkotlin/jvm/internal/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    return v2

    .line 4
    :cond_3
    iget v1, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    iget v3, p1, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    if-eq v1, v3, :cond_4

    return v2

    .line 5
    :cond_4
    iget v1, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    iget v3, p1, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    if-eq v1, v3, :cond_5

    return v2

    .line 6
    :cond_5
    iget-boolean p0, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    iget-boolean p1, p1, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    if-eq p0, p1, :cond_6

    return v2

    :cond_6
    return v0
.end method

.method public final getClearTop()Z
    .locals 0

    iget-boolean p0, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    return p0
.end method

.method public final getFilters()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;"
        }
    .end annotation

    iget-object p0, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    return-object p0
.end method

.method public final getFinishPrimaryWithSecondary()I
    .locals 0

    iget p0, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    return p0
.end method

.method public final getFinishSecondaryWithPrimary()I
    .locals 0

    iget p0, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    return p0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/window/embedding/SplitRule;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget v1, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget v1, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    invoke-static {v1}, Ljava/lang/Integer;->hashCode(I)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-boolean p0, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    invoke-static {p0}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public final plus$window_release(Landroidx/window/embedding/SplitPairFilter;)Landroidx/window/embedding/SplitPairRule;
    .locals 3

    const-string v0, "filter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 2
    iget-object v1, p0, Landroidx/window/embedding/SplitPairRule;->filters:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 3
    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    new-instance p1, Landroidx/window/embedding/SplitPairRule$Builder;

    invoke-static {v0}, Ll6/q;->K(Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getMinWidth()I

    move-result v1

    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getMinSmallestWidth()I

    move-result v2

    invoke-direct {p1, v0, v1, v2}, Landroidx/window/embedding/SplitPairRule$Builder;-><init>(Ljava/util/Set;II)V

    .line 5
    iget v0, p0, Landroidx/window/embedding/SplitPairRule;->finishPrimaryWithSecondary:I

    invoke-virtual {p1, v0}, Landroidx/window/embedding/SplitPairRule$Builder;->setFinishPrimaryWithSecondary(I)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 6
    iget v0, p0, Landroidx/window/embedding/SplitPairRule;->finishSecondaryWithPrimary:I

    invoke-virtual {p1, v0}, Landroidx/window/embedding/SplitPairRule$Builder;->setFinishSecondaryWithPrimary(I)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 7
    iget-boolean v0, p0, Landroidx/window/embedding/SplitPairRule;->clearTop:Z

    invoke-virtual {p1, v0}, Landroidx/window/embedding/SplitPairRule$Builder;->setClearTop(Z)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 8
    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getSplitRatio()F

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/window/embedding/SplitPairRule$Builder;->setSplitRatio(F)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p1

    .line 9
    invoke-virtual {p0}, Landroidx/window/embedding/SplitRule;->getLayoutDirection()I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/window/embedding/SplitPairRule$Builder;->setLayoutDir(I)Landroidx/window/embedding/SplitPairRule$Builder;

    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroidx/window/embedding/SplitPairRule$Builder;->build()Landroidx/window/embedding/SplitPairRule;

    move-result-object p0

    return-object p0
.end method
