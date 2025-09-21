.class public final Landroidx/window/embedding/SplitPairRule$Builder;
.super Ljava/lang/Object;
.source "SplitPairRule.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/embedding/SplitPairRule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private clearTop:Z

.field private final filters:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;"
        }
    .end annotation
.end field

.field private finishPrimaryWithSecondary:I

.field private finishSecondaryWithPrimary:I

.field private layoutDir:I

.field private final minSmallestWidth:I

.field private final minWidth:I

.field private splitRatio:F


# direct methods
.method public constructor <init>(Ljava/util/Set;II)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroidx/window/embedding/SplitPairFilter;",
            ">;II)V"
        }
    .end annotation

    const-string v0, "filters"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->filters:Ljava/util/Set;

    .line 3
    iput p2, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minWidth:I

    .line 4
    iput p3, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minSmallestWidth:I

    const/4 p1, 0x1

    .line 5
    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->finishSecondaryWithPrimary:I

    const/high16 p1, 0x3f000000    # 0.5f

    .line 6
    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->splitRatio:F

    const/4 p1, 0x3

    .line 7
    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->layoutDir:I

    return-void
.end method

.method private static synthetic getFinishPrimaryWithSecondary$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getFinishSecondaryWithPrimary$annotations()V
    .locals 0

    return-void
.end method

.method private static synthetic getLayoutDir$annotations()V
    .locals 0

    return-void
.end method


# virtual methods
.method public final build()Landroidx/window/embedding/SplitPairRule;
    .locals 10

    .line 1
    new-instance v9, Landroidx/window/embedding/SplitPairRule;

    iget-object v1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->filters:Ljava/util/Set;

    iget v2, p0, Landroidx/window/embedding/SplitPairRule$Builder;->finishPrimaryWithSecondary:I

    iget v3, p0, Landroidx/window/embedding/SplitPairRule$Builder;->finishSecondaryWithPrimary:I

    .line 2
    iget-boolean v4, p0, Landroidx/window/embedding/SplitPairRule$Builder;->clearTop:Z

    iget v5, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minWidth:I

    iget v6, p0, Landroidx/window/embedding/SplitPairRule$Builder;->minSmallestWidth:I

    iget v7, p0, Landroidx/window/embedding/SplitPairRule$Builder;->splitRatio:F

    iget v8, p0, Landroidx/window/embedding/SplitPairRule$Builder;->layoutDir:I

    move-object v0, v9

    .line 3
    invoke-direct/range {v0 .. v8}, Landroidx/window/embedding/SplitPairRule;-><init>(Ljava/util/Set;IIZIIFI)V

    return-object v9
.end method

.method public final setClearTop(Z)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 0

    iput-boolean p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->clearTop:Z

    return-object p0
.end method

.method public final setFinishPrimaryWithSecondary(I)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->finishPrimaryWithSecondary:I

    return-object p0
.end method

.method public final setFinishSecondaryWithPrimary(I)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->finishSecondaryWithPrimary:I

    return-object p0
.end method

.method public final setLayoutDir(I)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->layoutDir:I

    return-object p0
.end method

.method public final setSplitRatio(F)Landroidx/window/embedding/SplitPairRule$Builder;
    .locals 0

    iput p1, p0, Landroidx/window/embedding/SplitPairRule$Builder;->splitRatio:F

    return-object p0
.end method
