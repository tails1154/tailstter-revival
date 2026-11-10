.class final Lbb;
.super Ljava/lang/Object;


# instance fields
.field final a:Ljava/lang/String;

.field final b:Z

.field private synthetic c:Lax;


# direct methods
.method constructor <init>(Lax;Ljava/lang/String;Z)V
    .locals 0

    iput-object p1, p0, Lbb;->c:Lax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lbb;->a:Ljava/lang/String;

    iput-boolean p3, p0, Lbb;->b:Z

    return-void
.end method
