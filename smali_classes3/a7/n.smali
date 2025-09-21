.class public final La7/n;
.super Ljava/lang/Object;
.source "Sequences.kt"

# interfaces
.implements La7/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "La7/e<",
        "TR;>;"
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

.field private final b:Lu6/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu6/l<",
            "TT;TR;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(La7/e;Lu6/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "La7/e<",
            "+TT;>;",
            "Lu6/l<",
            "-TT;+TR;>;)V"
        }
    .end annotation

    const-string v0, "sequence"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "transformer"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, La7/n;->a:La7/e;

    iput-object p2, p0, La7/n;->b:Lu6/l;

    return-void
.end method

.method public static final synthetic a(La7/n;)La7/e;
    .locals 0

    iget-object p0, p0, La7/n;->a:La7/e;

    return-object p0
.end method

.method public static final synthetic b(La7/n;)Lu6/l;
    .locals 0

    iget-object p0, p0, La7/n;->b:Lu6/l;

    return-object p0
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TR;>;"
        }
    .end annotation

    new-instance v0, La7/n$a;

    invoke-direct {v0, p0}, La7/n$a;-><init>(La7/n;)V

    return-object v0
.end method
