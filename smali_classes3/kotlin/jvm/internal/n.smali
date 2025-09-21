.class public abstract Lkotlin/jvm/internal/n;
.super Lkotlin/jvm/internal/p;
.source "MutablePropertyReference1.java"

# interfaces
.implements Lz6/h;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lkotlin/jvm/internal/p;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/p;-><init>(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 3
    invoke-direct/range {p0 .. p5}, Lkotlin/jvm/internal/p;-><init>(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method


# virtual methods
.method protected computeReflected()Lz6/b;
    .locals 0

    invoke-static {p0}, Lkotlin/jvm/internal/x;->d(Lkotlin/jvm/internal/n;)Lz6/h;

    move-result-object p0

    return-object p0
.end method

.method public getDelegate(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0}, Lkotlin/jvm/internal/v;->getReflected()Lz6/i;

    move-result-object p0

    check-cast p0, Lz6/h;

    invoke-interface {p0, p1}, Lz6/k;->getDelegate(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getGetter()Lz6/i$a;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/n;->getGetter()Lz6/k$a;

    move-result-object p0

    return-object p0
.end method

.method public getGetter()Lz6/k$a;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/v;->getReflected()Lz6/i;

    move-result-object p0

    check-cast p0, Lz6/h;

    invoke-interface {p0}, Lz6/k;->getGetter()Lz6/k$a;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic getSetter()Lz6/g;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lkotlin/jvm/internal/n;->getSetter()Lz6/h$a;

    move-result-object p0

    return-object p0
.end method

.method public getSetter()Lz6/h$a;
    .locals 0

    .line 2
    invoke-virtual {p0}, Lkotlin/jvm/internal/v;->getReflected()Lz6/i;

    move-result-object p0

    check-cast p0, Lz6/h;

    invoke-interface {p0}, Lz6/h;->getSetter()Lz6/h$a;

    move-result-object p0

    return-object p0
.end method

.method public invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-interface {p0, p1}, Lz6/k;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
