.class final Lm6/d$a;
.super Ljava/lang/Object;
.source "MapBuilder.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm6/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/g;)V
    .locals 0

    invoke-direct {p0}, Lm6/d$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lm6/d$a;I)I
    .locals 0

    invoke-direct {p0, p1}, Lm6/d$a;->c(I)I

    move-result p0

    return p0
.end method

.method public static final synthetic b(Lm6/d$a;I)I
    .locals 0

    invoke-direct {p0, p1}, Lm6/d$a;->d(I)I

    move-result p0

    return p0
.end method

.method private final c(I)I
    .locals 0

    const/4 p0, 0x1

    invoke-static {p1, p0}, Ly6/e;->a(II)I

    move-result p0

    mul-int/lit8 p0, p0, 0x3

    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result p0

    return p0
.end method

.method private final d(I)I
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->numberOfLeadingZeros(I)I

    move-result p0

    add-int/lit8 p0, p0, 0x1

    return p0
.end method
