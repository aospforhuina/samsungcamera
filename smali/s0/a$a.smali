.class public Ls0/a$a;
.super Ljava/lang/Object;
.source "NoTransition.java"

# interfaces
.implements Ls0/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls0/c<",
        "TR;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lx/a;Z)Ls0/b;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx/a;",
            "Z)",
            "Ls0/b<",
            "TR;>;"
        }
    .end annotation

    sget-object p0, Ls0/a;->a:Ls0/a;

    return-object p0
.end method
