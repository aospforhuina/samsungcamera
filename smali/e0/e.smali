.class public final Le0/e;
.super Ljava/lang/Object;
.source "DataUrlLoader.java"

# interfaces
.implements Le0/n;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le0/e$c;,
        Le0/e$b;,
        Le0/e$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<Model:",
        "Ljava/lang/Object;",
        "Data:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le0/n<",
        "TModel;TData;>;"
    }
.end annotation


# instance fields
.field private final a:Le0/e$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le0/e$a<",
            "TData;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le0/e$a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le0/e$a<",
            "TData;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le0/e;->a:Le0/e$a;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "data:image"

    invoke-virtual {p0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public b(Ljava/lang/Object;IILx/i;)Le0/n$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TModel;II",
            "Lx/i;",
            ")",
            "Le0/n$a<",
            "TData;>;"
        }
    .end annotation

    .line 1
    new-instance p2, Le0/n$a;

    new-instance p3, Lt0/b;

    invoke-direct {p3, p1}, Lt0/b;-><init>(Ljava/lang/Object;)V

    new-instance p4, Le0/e$b;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    iget-object p0, p0, Le0/e;->a:Le0/e$a;

    invoke-direct {p4, p1, p0}, Le0/e$b;-><init>(Ljava/lang/String;Le0/e$a;)V

    invoke-direct {p2, p3, p4}, Le0/n$a;-><init>(Lx/f;Ly/d;)V

    return-object p2
.end method
