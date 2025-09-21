.class final Lb7/d;
.super Ljava/lang/Object;
.source "Strings.kt"

# interfaces
.implements La7/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "La7/e<",
        "Ly6/d;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/CharSequence;

.field private final b:I

.field private final c:I

.field private final d:Lu6/p;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/p<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/Integer;",
            "Lk6/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;IILu6/p;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II",
            "Lu6/p<",
            "-",
            "Ljava/lang/CharSequence;",
            "-",
            "Ljava/lang/Integer;",
            "Lk6/j<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;)V"
        }
    .end annotation

    const-string v0, "input"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextMatch"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lb7/d;->a:Ljava/lang/CharSequence;

    .line 3
    iput p2, p0, Lb7/d;->b:I

    .line 4
    iput p3, p0, Lb7/d;->c:I

    .line 5
    iput-object p4, p0, Lb7/d;->d:Lu6/p;

    return-void
.end method

.method public static final synthetic a(Lb7/d;)Lu6/p;
    .locals 0

    iget-object p0, p0, Lb7/d;->d:Lu6/p;

    return-object p0
.end method

.method public static final synthetic b(Lb7/d;)Ljava/lang/CharSequence;
    .locals 0

    iget-object p0, p0, Lb7/d;->a:Ljava/lang/CharSequence;

    return-object p0
.end method

.method public static final synthetic c(Lb7/d;)I
    .locals 0

    iget p0, p0, Lb7/d;->c:I

    return p0
.end method

.method public static final synthetic d(Lb7/d;)I
    .locals 0

    iget p0, p0, Lb7/d;->b:I

    return p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ly6/d;",
            ">;"
        }
    .end annotation

    new-instance v0, Lb7/d$a;

    invoke-direct {v0, p0}, Lb7/d$a;-><init>(Lb7/d;)V

    return-object v0
.end method
