.class public Le0/m;
.super Ljava/lang/Object;
.source "ModelCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/m$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        "B:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Lu0/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu0/g<",
            "Le0/m$b<",
            "TA;>;TB;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(J)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le0/m$a;

    invoke-direct {v0, p0, p1, p2}, Le0/m$a;-><init>(Le0/m;J)V

    iput-object v0, p0, Le0/m;->a:Lu0/g;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;II)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;II)TB;"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Le0/m$b;->a(Ljava/lang/Object;II)Le0/m$b;

    move-result-object p1

    .line 2
    iget-object p0, p0, Le0/m;->a:Lu0/g;

    invoke-virtual {p0, p1}, Lu0/g;->g(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 3
    invoke-virtual {p1}, Le0/m$b;->c()V

    return-object p0
.end method

.method public b(Ljava/lang/Object;IILjava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;IITB;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1, p2, p3}, Le0/m$b;->a(Ljava/lang/Object;II)Le0/m$b;

    move-result-object p1

    .line 2
    iget-object p0, p0, Le0/m;->a:Lu0/g;

    invoke-virtual {p0, p1, p4}, Lu0/g;->k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
