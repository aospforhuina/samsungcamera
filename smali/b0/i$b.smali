.class final Lb0/i$b;
.super Lb0/c;
.source "LruArrayPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb0/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lb0/c<",
        "Lb0/i$a;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lb0/c;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic a()Lb0/l;
    .locals 0

    invoke-virtual {p0}, Lb0/i$b;->d()Lb0/i$a;

    move-result-object p0

    return-object p0
.end method

.method protected d()Lb0/i$a;
    .locals 1

    new-instance v0, Lb0/i$a;

    invoke-direct {v0, p0}, Lb0/i$a;-><init>(Lb0/i$b;)V

    return-object v0
.end method

.method e(ILjava/lang/Class;)Lb0/i$a;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Class<",
            "*>;)",
            "Lb0/i$a;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lb0/c;->b()Lb0/l;

    move-result-object p0

    check-cast p0, Lb0/i$a;

    .line 2
    invoke-virtual {p0, p1, p2}, Lb0/i$a;->b(ILjava/lang/Class;)V

    return-object p0
.end method
