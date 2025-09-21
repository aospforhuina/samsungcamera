.class final La7/d;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements La7/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La7/e<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final a:Lu6/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/a<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Lu6/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/l<",
            "TT;TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lu6/a;Lu6/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu6/a<",
            "+TT;>;",
            "Lu6/l<",
            "-TT;+TT;>;)V"
        }
    .end annotation

    const-string v0, "getInitialValue"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "getNextValue"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, La7/d;->a:Lu6/a;

    iput-object p2, p0, La7/d;->b:Lu6/l;

    return-void
.end method

.method public static final synthetic a(La7/d;)Lu6/a;
    .locals 0

    iget-object p0, p0, La7/d;->a:Lu6/a;

    return-object p0
.end method

.method public static final synthetic b(La7/d;)Lu6/l;
    .locals 0

    iget-object p0, p0, La7/d;->b:Lu6/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    new-instance v0, La7/d$a;

    invoke-direct {v0, p0}, La7/d$a;-><init>(La7/d;)V

    return-object v0
.end method
