.class public final La7/c;
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
.field private final a:La7/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "La7/e<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final b:Z

.field private final c:Lu6/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/l<",
            "TT;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La7/e;ZLu6/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La7/e<",
            "+TT;>;Z",
            "Lu6/l<",
            "-TT;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "predicate"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La7/c;->a:La7/e;

    .line 3
    iput-boolean p2, p0, La7/c;->b:Z

    .line 4
    iput-object p3, p0, La7/c;->c:Lu6/l;

    return-void
.end method

.method public static final synthetic a(La7/c;)Lu6/l;
    .locals 0

    iget-object p0, p0, La7/c;->c:Lu6/l;

    return-object p0
.end method

.method public static final synthetic b(La7/c;)Z
    .locals 0

    iget-boolean p0, p0, La7/c;->b:Z

    return p0
.end method

.method public static final synthetic c(La7/c;)La7/e;
    .locals 0

    iget-object p0, p0, La7/c;->a:La7/e;

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

    new-instance v0, La7/c$a;

    invoke-direct {v0, p0}, La7/c$a;-><init>(La7/c;)V

    return-object v0
.end method
