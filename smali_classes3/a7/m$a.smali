.class public final La7/m$a;
.super Ljava/lang/Object;
.source "Iterables.kt"

# interfaces
.implements Ljava/lang/Iterable;
.implements Lv6/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = La7/m;->f(La7/e;)Ljava/lang/Iterable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Iterable<",
        "TT;>;",
        "Lv6/a;"
    }
.end annotation


# instance fields
.field final synthetic a:La7/e;


# direct methods
.method public constructor <init>(La7/e;)V
    .locals 0

    iput-object p1, p0, La7/m$a;->a:La7/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public iterator()Ljava/util/Iterator;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    iget-object p0, p0, La7/m$a;->a:La7/e;

    invoke-interface {p0}, La7/e;->iterator()Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method
