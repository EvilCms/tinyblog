<?php

class blogcore{
  /**
   *
   * @author Adil
   * Provides class for posting an article, deleting an article, and pulling an article
   * 
   */
     public function getArticle($id){
        global $template;
        $query=mysql_query("SELECT * FROM `posts` WHERE id=".$id);
        while($content=mysql_fetch_assoc($query)){
            $template->setParam('blog-title-'.$id,$content['title']);
            $template->setParam('blog-content-'.$id,$content['post']);
            $template->setParam('blog-author-'.$id,$content['author']);
        }
    }
    public function PostArticle($id,$article,$author,$title){
        $query="INSERT INTO `posts`(`id`, `title`, `post`, `author`)
            VALUES(`$id`,`$title`,`$article,`$author`)";
        mysql_query($query);
    }
    public function DeleteArticle($id){
        $query="DELETE FROM `posts` WHERE id=$id";
        mysql_query($query);
    }
}
?>
