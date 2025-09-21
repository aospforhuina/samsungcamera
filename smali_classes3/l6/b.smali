.class public abstract Ll6/b;
.super Ll6/a;
.source "AbstractList.kt"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll6/b$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ll6/a<",
        "TE;>;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final a:Ll6/b$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll6/b$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll6/b$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Ll6/b;->a:Ll6/b$a;

    return-void
.end method
