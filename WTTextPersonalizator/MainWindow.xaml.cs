﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;
using System.Windows.Forms;
using static System.Windows.Forms.VisualStyles.VisualStyleElement;
using System.IO;
using System.Globalization;
using System.Runtime.InteropServices.ComTypes;
using MessageBox = System.Windows.MessageBox;

namespace WTTextPersonalizator
{
    /// <summary>
    /// Логика взаимодействия для MainWindow.xaml
    /// </summary>
    public partial class MainWindow : System.Windows.Window
    {
        private bool langB=false;
        private bool isPathLoaded = false;
        public string selectedFolder = "";
        public MainWindow()
        {
            InitializeComponent();
            language();
            setLanguage();
            selectedFolder = Properties.Settings.Default.GamePath;
            if (selectedFolder != "")
            {
                saveSet.IsChecked = true;
                isPathLoaded = true;
                label.Text = selectedFolder;
            }
            else
            {
                saveSet.IsChecked = false;
                isPathLoaded = false;
            }
            if(Properties.Settings.Default.ShowInstruction)
            {
                Instruction nw = new Instruction();
                nw.ShowDialog();
            }
            langB= true;
        }

        public void setLanguage()
        {
            languageResource langRes = new languageResource(Properties.Settings.Default.Language);
            chooseFolderBtn.Content = langRes.chooseFolderButton;
            remeber.Content = langRes.remeberCheck;
            launchBtn.Content = langRes.launchButton;
        }

        public void language()
        {
           // Console.WriteLine(CultureInfo.CurrentCulture.TwoLetterISOLanguageName);
            if(Properties.Settings.Default.ShowInstruction)
            {
                if(CultureInfo.CurrentCulture.TwoLetterISOLanguageName=="ru")
                {
                    Properties.Settings.Default.Language = "ru";
                    Properties.Settings.Default.Save();
                }
                else
                {
                    Properties.Settings.Default.Language = "en";
                    Properties.Settings.Default.Save();
                }
            }
            else
            {
                if (Properties.Settings.Default.Language=="ru")
                {
                    languageCombo.SelectedItem = 0;
                    languageCombo.SelectedIndex = 0;
                }
                else
                {
                    languageCombo.SelectedItem = 1;
                    languageCombo.SelectedIndex = 1;
                }
            }
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            FolderBrowserDialog folderDlg = new FolderBrowserDialog();
            folderDlg.ShowNewFolderButton = true;
            // Show the FolderBrowserDialog.  
            DialogResult result = folderDlg.ShowDialog();
            if (result == System.Windows.Forms.DialogResult.OK)
            {
                label.Text = folderDlg.SelectedPath;
            }
        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            try
            {
                string path = label.Text + "/lang/menu.csv";
                string testStr = "";
                using (StreamReader reader = new StreamReader(path))
                {
                    testStr = reader.ReadToEnd();
                }
                if (saveSet.IsChecked == true)
                {
                    Properties.Settings.Default.GamePath = label.Text;
                    Properties.Settings.Default.Save();
                    if (languageCombo.SelectedIndex == 0)
                    {
                        Properties.Settings.Default.Language = "ru";
                        Properties.Settings.Default.Save();
                    }
                    else
                    {
                        Properties.Settings.Default.Language = "en";
                        Properties.Settings.Default.Save();
                    }
                }
                else
                {
                    Properties.Settings.Default.GamePath = "";
                    Properties.Settings.Default.Save();
                }
                WorkingFrame wf = new WorkingFrame(label.Text);
                wf.Show();
                this.Close();
            }
            catch 
            {
                MessageBox.Show("Укажиет корректный путь игры");
            }
        }

        private void saveSet_Checked(object sender, RoutedEventArgs e)
        {
            if (label.Text != "")
            {
                Properties.Settings.Default.GamePath = label.Text;
                Properties.Settings.Default.Save();
            }
        }

        private void languageCombo_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            setLanguage();
            if(langB)
            {
                if (languageCombo.SelectedIndex == 0)
                {
                    Properties.Settings.Default.Language = "ru";
                    Properties.Settings.Default.Save();
                }
                else
                {
                    Properties.Settings.Default.Language = "en";
                    Properties.Settings.Default.Save();
                }
                MainWindow mw = new MainWindow();
                mw.Show();
                this.Close();
            }
        }
    }
}
