.class public final synthetic Lm3/k;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic a:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lm3/k;->a:I

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget p0, p0, Lm3/k;->a:I

    check-cast p1, Lm3/w$f;

    invoke-static {p0, p1}, Lm3/w;->p(ILm3/w$f;)Z

    move-result p0

    return p0
.end method
