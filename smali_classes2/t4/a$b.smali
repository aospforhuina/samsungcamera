.class Lt4/a$b;
.super Ljava/lang/Object;
.source "ISOEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lt4/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:[B


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput p1, p0, Lt4/a$b;->a:I

    .line 4
    iput-object p2, p0, Lt4/a$b;->b:Ljava/lang/String;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lt4/a$b;->c:[B

    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;Lt4/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lt4/a$b;-><init>(ILjava/lang/String;)V

    return-void
.end method
