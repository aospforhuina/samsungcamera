.class public final Ll6/g;
.super Ll6/d;
.source "ArrayDeque.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ll6/g$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ll6/d<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final a:Ll6/g$a;

.field private static final b:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ll6/g$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ll6/g$a;-><init>(Lkotlin/jvm/internal/g;)V

    sput-object v0, Ll6/g;->a:Ll6/g$a;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    sput-object v0, Ll6/g;->b:[Ljava/lang/Object;

    return-void
.end method
